import AppKit
import Foundation

func fail(_ message: String) -> Never {
    FileHandle.standardError.write(Data("\(message)\n".utf8))
    exit(1)
}

let arguments = CommandLine.arguments
guard arguments.count == 5 else {
    fail("Usage: swift render_svg.swift INPUT.svg OUTPUT.png WIDTH HEIGHT")
}

let inputURL = URL(fileURLWithPath: arguments[1])
let outputURL = URL(fileURLWithPath: arguments[2])
guard let width = Int(arguments[3]), let height = Int(arguments[4]) else {
    fail("WIDTH and HEIGHT must be integers")
}

guard let image = NSImage(contentsOf: inputURL) else {
    fail("Could not read SVG: \(inputURL.path)")
}

guard let bitmap = NSBitmapImageRep(
    bitmapDataPlanes: nil,
    pixelsWide: width,
    pixelsHigh: height,
    bitsPerSample: 8,
    samplesPerPixel: 4,
    hasAlpha: true,
    isPlanar: false,
    colorSpaceName: .deviceRGB,
    bytesPerRow: 0,
    bitsPerPixel: 0
) else {
    fail("Could not create bitmap canvas")
}

bitmap.size = NSSize(width: width, height: height)
guard let context = NSGraphicsContext(bitmapImageRep: bitmap) else {
    fail("Could not create graphics context")
}

NSGraphicsContext.saveGraphicsState()
NSGraphicsContext.current = context
context.imageInterpolation = .high
image.draw(
    in: NSRect(x: 0, y: 0, width: width, height: height),
    from: NSRect(origin: .zero, size: image.size),
    operation: .copy,
    fraction: 1.0
)
context.flushGraphics()
NSGraphicsContext.restoreGraphicsState()

guard let png = bitmap.representation(using: .png, properties: [:]) else {
    fail("Could not encode PNG")
}

do {
    try png.write(to: outputURL, options: .atomic)
} catch {
    fail("Could not write PNG: \(error)")
}
