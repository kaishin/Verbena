import AppKit

public extension NSView {
  /// Get an `NSImage` representation of a view instance.
  ///
  /// - Returns: `NSImage` instance of the view
  func snapshot() -> NSImage {
    guard let bitmap = bitmapImageRepForCachingDisplay(in: bounds) else {
      return NSImage(size: bounds.size)
    }

    cacheDisplay(in: bounds, to: bitmap)
    return NSImage(cgImage: bitmap.cgImage!, size: bounds.size)
  }
}
