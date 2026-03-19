#!/usr/bin/env python3
"""Scan Jekyll posts for arXiv links and send trackback pings for new ones.

Usage:
    python _scripts/send_trackbacks.py [--dry-run]

Options:
    --dry-run   Show what would be sent without actually pinging arXiv.
"""

import os
import re
import sys
import urllib.parse
import urllib.request
import urllib.error
from datetime import datetime, timezone
from pathlib import Path

import yaml

POSTS_DIR = Path("_posts")
TRACKBACKS_FILE = Path("_data/trackbacks.yml")
SITE_URL = "https://antieau.github.io"
BLOG_NAME = "Benjamin Antieau"

ARXIV_ID_RE = re.compile(r"arxiv\.org/abs/(\d{4}\.\d{4,5}(?:v\d+)?)")


def load_sent_trackbacks():
    """Load the set of already-sent (post, arxiv_id) pairs."""
    if not TRACKBACKS_FILE.exists():
        return set()
    with open(TRACKBACKS_FILE) as f:
        data = yaml.safe_load(f)
    if not data or not isinstance(data, list):
        return set()
    return {(entry["post"], entry["arxiv_id"]) for entry in data}


def save_sent_trackbacks(entries):
    """Write the full list of sent trackback entries to the YAML file."""
    with open(TRACKBACKS_FILE, "w") as f:
        f.write("# Tracks which arXiv trackback pings have been sent.\n")
        f.write("# Format: list of {post, arxiv_id, sent_at} entries.\n")
        f.write("# Managed automatically by _scripts/send_trackbacks.py\n\n")
        if entries:
            yaml.dump(entries, f, default_flow_style=False, sort_keys=False)


def parse_front_matter(text):
    """Extract YAML front matter from a Jekyll post."""
    if not text.startswith("---"):
        return {}
    end = text.index("---", 3)
    return yaml.safe_load(text[3:end]) or {}


def get_post_url(filename, front_matter):
    """Derive the post URL from its filename and front matter."""
    # Standard Jekyll post filename: YYYY-MM-DD-slug.markdown
    match = re.match(r"(\d{4})-(\d{2})-(\d{2})-(.+)\.\w+$", filename)
    if not match:
        return None
    year, month, day, slug = match.groups()
    return f"{SITE_URL}/{year}/{month}/{day}/{slug}.html"


def scan_post(filepath):
    """Return a list of (arxiv_id, post_url, title) for all arXiv links in a post."""
    text = filepath.read_text()
    front_matter = parse_front_matter(text)
    title = front_matter.get("title", filepath.stem)
    post_url = get_post_url(filepath.name, front_matter)
    if not post_url:
        return []

    # Strip version suffixes (e.g. v2) to get the canonical arXiv ID
    arxiv_ids = set()
    for match in ARXIV_ID_RE.finditer(text):
        arxiv_id = re.sub(r"v\d+$", "", match.group(1))
        arxiv_ids.add(arxiv_id)

    return [(aid, post_url, title) for aid in arxiv_ids]


def send_trackback(arxiv_id, post_url, title, excerpt=""):
    """Send a trackback ping to arXiv. Returns True on success."""
    trackback_url = f"https://arxiv.org/trackback/{arxiv_id}"
    data = urllib.parse.urlencode({
        "url": post_url,
        "title": title,
        "blog_name": BLOG_NAME,
        "excerpt": excerpt,
    }).encode("utf-8")

    req = urllib.request.Request(
        trackback_url,
        data=data,
        headers={"Content-Type": "application/x-www-form-urlencoded"},
    )

    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            body = resp.read().decode("utf-8", errors="replace")
            if "<error>0</error>" in body:
                return True
            else:
                print(f"  arXiv responded with error: {body.strip()}")
                return False
    except urllib.error.URLError as e:
        print(f"  Network error: {e}")
        return False


def main():
    dry_run = "--dry-run" in sys.argv

    sent = load_sent_trackbacks()
    # Reload full entries list for appending
    if TRACKBACKS_FILE.exists():
        with open(TRACKBACKS_FILE) as f:
            all_entries = yaml.safe_load(f)
        if not all_entries or not isinstance(all_entries, list):
            all_entries = []
    else:
        all_entries = []

    new_count = 0
    fail_count = 0

    for post_path in sorted(POSTS_DIR.glob("*.markdown")):
        links = scan_post(post_path)
        for arxiv_id, post_url, title in links:
            key = (post_path.name, arxiv_id)
            if key in sent:
                continue

            new_count += 1
            if dry_run:
                print(f"[dry-run] {post_path.name} -> {arxiv_id}")
                print(f"          post_url: {post_url}")
                print(f"          title: {title}")
            else:
                print(f"Pinging arXiv {arxiv_id} for {post_path.name}...")
                ok = send_trackback(arxiv_id, post_url, title)
                if ok:
                    print(f"  OK")
                    all_entries.append({
                        "post": post_path.name,
                        "arxiv_id": arxiv_id,
                        "sent_at": datetime.now(timezone.utc)
                                          .strftime("%Y-%m-%dT%H:%M:%SZ"),
                    })
                    sent.add(key)
                else:
                    print(f"  FAILED")
                    fail_count += 1

    if new_count == 0:
        print("No new trackbacks to send.")
    elif dry_run:
        print(f"\n{new_count} trackback(s) would be sent.")
    else:
        save_sent_trackbacks(all_entries)
        print(f"\n{new_count - fail_count} sent, {fail_count} failed.")

    sys.exit(1 if fail_count > 0 else 0)


if __name__ == "__main__":
    main()
