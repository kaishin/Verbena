import AppKit.NSImage

extension NSImage {
  /// Renders a `NSImage` instance from a drawing block.
  ///
  /// :param: size The target image size measured in points.
  /// :param: transparency A Boolean flag indicating Whether the rendered image is transparent.
  /// :param: drawingBlockWithSize A drawing block that takes a `CGSize` and returns `Void`.
  /// 
  /// :returns: A newly rendered image.
  public class func render(_ size: CGSize, transparency: Bool = false, drawingBlockWithSize: (CGSize) -> Void) -> NSImage {
    let image = NSImage(size: size)
    image.lockFocus()

    if !transparency {
      NSColor.white.setFill()
      NSRect(x: 0, y: 0, width: image.size.width, height: image.size.height).fill()
    }

    drawingBlockWithSize(size)
    image.unlockFocus()
    return image
  }

  /// Renders an `NSImage` instance from a `NSView`.
  ///
  /// :param: view The view that will be snapshot.
  ///
  /// :returns: A newly rendered snapshot of the view.
  public class func image(from view: NSView) -> NSImage {
    return view.snapshot()
  }
}
