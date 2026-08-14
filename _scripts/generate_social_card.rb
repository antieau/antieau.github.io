#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "date"
require "fileutils"
require "optparse"
require "pathname"
require "yaml"

WIDTH = 1200
HEIGHT = 627

ROOT = Pathname.new(File.expand_path("..", __dir__))
SCSS_PATH = ROOT.join("_sass/minima.scss")
MACOS_RENDERER = ROOT.join("_scripts/render_svg.swift")
FONT_FAMILY = '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif'

def usage(parser, message = nil)
  warn message if message
  warn parser
  exit 1
end

def parse_front_matter(post_path)
  contents = post_path.read(encoding: "UTF-8")
  match = contents.match(/\A---\s*\n(.*?)\n---\s*\n/m)
  raise "No YAML front matter found in #{post_path}" unless match

  YAML.safe_load(
    match[1],
    permitted_classes: [Date, Time],
    aliases: true
  ) || {}
end

def scss_color(name)
  source = SCSS_PATH.read(encoding: "UTF-8")
  match = source.match(/^\$#{Regexp.escape(name)}:\s*(#[0-9a-fA-F]{3}(?:[0-9a-fA-F]{3})?)\b/)
  raise "Could not find $#{name} in #{SCSS_PATH}" unless match

  match[1]
end

def word_width(word)
  word.each_char.sum do |character|
    case character
    when /[ilI1.,'’]/ then 0.28
    when /[MW@%]/ then 0.86
    when /[A-Z]/ then 0.64
    when /\s/ then 0.32
    else 0.53
    end
  end
end

def wrap_title(title, font_size, maximum_width)
  maximum_units = maximum_width.to_f / font_size
  lines = []
  current = ""

  title.split.each do |word|
    candidate = current.empty? ? word : "#{current} #{word}"
    if !current.empty? && word_width(candidate) > maximum_units
      lines << current
      current = word
    else
      current = candidate
    end
  end

  lines << current unless current.empty?
  lines
end

def title_layout(title)
  font_size = 68
  lines = wrap_title(title, font_size, 980)

  while lines.length > 3 && font_size > 48
    font_size -= 4
    lines = wrap_title(title, font_size, 980)
  end

  raise "Title is too long for the social-card layout" if lines.length > 3

  [font_size, lines]
end

def post_date(post_path, front_matter)
  value = front_matter["date"]
  return Date.parse(value.to_s) if value

  match = post_path.basename.to_s.match(/\A(\d{4}-\d{2}-\d{2})-/)
  raise "Could not determine post date from #{post_path}" unless match

  Date.iso8601(match[1])
end

def image_path(post_path, front_matter)
  image = front_matter["image"]
  image = image["path"] if image.is_a?(Hash)

  unless image
    slug = post_path.basename.sub_ext("").to_s.sub(/\A\d{4}-\d{2}-\d{2}-/, "")
    image = "/assets/social/#{slug}.png"
    warn "No image is configured in the post. Add this front-matter line:"
    warn "image: #{image}"
  end

  output = ROOT.join(image.sub(%r{\A/}, "")).cleanpath
  unless output.to_s.start_with?(ROOT.to_s + File::SEPARATOR)
    raise "Image output must stay inside the repository: #{output}"
  end
  raise "Social-card image must use a .png extension: #{output}" unless output.extname == ".png"

  output
end

def executable?(command)
  ENV.fetch("PATH", "").split(File::PATH_SEPARATOR).any? do |directory|
    File.executable?(File.join(directory, command))
  end
end

def render_png(svg_path, png_path)
  FileUtils.mkdir_p(png_path.dirname)

  command = if executable?("rsvg-convert")
              ["rsvg-convert", "--width", WIDTH.to_s, "--height", HEIGHT.to_s,
               "--output", png_path.to_s, svg_path.to_s]
            elsif executable?("magick")
              ["magick", svg_path.to_s, "-resize", "#{WIDTH}x#{HEIGHT}!", png_path.to_s]
            elsif executable?("convert")
              ["convert", svg_path.to_s, "-resize", "#{WIDTH}x#{HEIGHT}!", png_path.to_s]
            elsif executable?("inkscape")
              ["inkscape", svg_path.to_s, "--export-filename=#{png_path}",
               "--export-width=#{WIDTH}", "--export-height=#{HEIGHT}"]
            elsif RUBY_PLATFORM.include?("darwin") && executable?("swift")
              ["swift", MACOS_RENDERER.to_s, svg_path.to_s, png_path.to_s,
               WIDTH.to_s, HEIGHT.to_s]
            else
              raise <<~MESSAGE.strip
                No SVG-to-PNG renderer was found. Install librsvg (rsvg-convert),
                ImageMagick, or Inkscape. macOS can use its built-in Swift/AppKit
                renderer when the Command Line Tools are installed.
              MESSAGE
            end

  success = system(*command)
  raise "Social-card renderer failed: #{command.join(' ')}" unless success && png_path.exist?
end

def build_svg(title, date)
  background = scss_color("background-color")
  text = scss_color("text-color")
  brand_dark = scss_color("brand-color-dark")
  brand_light = scss_color("brand-color-light")
  muted = scss_color("grey-color")
  font_size, lines = title_layout(title)
  line_height = (font_size * 1.12).round
  title_y = 218

  title_elements = lines.each_with_index.map do |line, index|
    escaped = CGI.escapeHTML(line)
    %(<text x="110" y="#{title_y + (index * line_height)}" fill="#{text}" font-family='#{FONT_FAMILY}' font-size="#{font_size}" font-weight="400" letter-spacing="-1.5">#{escaped}</text>)
  end.join("\n      ")

  formatted_date = date.strftime("%d %b %Y").sub(/\A0/, "")
  escaped_title = CGI.escapeHTML(title)

  <<~SVG
    <?xml version="1.0" encoding="UTF-8"?>
    <svg xmlns="http://www.w3.org/2000/svg" width="#{WIDTH}" height="#{HEIGHT}" viewBox="0 0 #{WIDTH} #{HEIGHT}" role="img" aria-labelledby="title description">
      <title id="title">#{escaped_title}</title>
      <desc id="description">Social preview card for a post by Benjamin Antieau.</desc>
      <rect width="#{WIDTH}" height="#{HEIGHT}" fill="#{background}"/>
      <rect width="#{WIDTH}" height="5" fill="#{brand_dark}"/>

      <text x="110" y="77" fill="#{brand_dark}" font-family='#{FONT_FAMILY}' font-size="32" font-weight="300" letter-spacing="-1">Benjamin Antieau</text>
      <text x="1090" y="77" fill="#{text}" font-family='#{FONT_FAMILY}' font-size="21" font-weight="400" text-anchor="end">antieau.github.io</text>
      <line x1="0" y1="105" x2="#{WIDTH}" y2="105" stroke="#{brand_light}" stroke-width="1"/>

      #{title_elements}

      <line x1="110" y1="515" x2="1090" y2="515" stroke="#{brand_light}" stroke-width="1"/>
      <text x="110" y="565" fill="#{muted}" font-family='#{FONT_FAMILY}' font-size="24" font-weight="400">#{formatted_date}</text>
    </svg>
  SVG
end

options = { svg_only: false }
parser = OptionParser.new do |opts|
  opts.banner = "Usage: ruby _scripts/generate_social_card.rb POST [--svg-only]"
  opts.on("--svg-only", "Generate the editable SVG without rendering a PNG") do
    options[:svg_only] = true
  end
end

parser.parse!
usage(parser, "Provide exactly one post path.") unless ARGV.length == 1

post_path = ROOT.join(ARGV.first).cleanpath
usage(parser, "Post not found: #{post_path}") unless post_path.file?
unless post_path.to_s.start_with?(ROOT.join("_posts").to_s + File::SEPARATOR)
  usage(parser, "The input must be a file in _posts.")
end

front_matter = parse_front_matter(post_path)
title = front_matter["social_title"] || front_matter["title"]
raise "Post has no title: #{post_path}" unless title

png_path = image_path(post_path, front_matter)
svg_path = png_path.sub_ext(".svg")
FileUtils.mkdir_p(svg_path.dirname)
svg_path.write(build_svg(title, post_date(post_path, front_matter)))
puts "Wrote #{svg_path.relative_path_from(ROOT)}"

unless options[:svg_only]
  render_png(svg_path, png_path)
  puts "Wrote #{png_path.relative_path_from(ROOT)} (#{WIDTH}x#{HEIGHT})"
end
