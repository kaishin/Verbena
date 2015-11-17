import AppKit.NSImage

extension NSImage {
  /// Renders a `NSImage` instance from a drawing block.
  ///
  /// :param: size The target image size measured in points.
  /// :param: transparency A Boolean flag indicating Whether the rendered image is transparent.
  /// :param: drawingBlockWithSize A drawing block that takes a `CGSize` and returns `Void`.
  /// 
  /// :returns: A newly rendered image.
  public class func render(size: CGSize, transparency: Bool = false, drawingBlockWithSize: CGSize -> Void) -> NSImage {
    let image = NSImage(size: size)
    image.lockFocus()

    if !transparency {
      NSColor.whiteColor().setFill()
      NSRectFill(NSRect(x: 0, y: 0, width: image.size.width, height: image.size.height))
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
  public class func imageWithView(view: NSView) -> NSImage {
    guard let bitmap = view.bitmapImageRepForCachingDisplayInRect(view.bounds) else {
      return NSImage(size: view.bounds.size)
    }
    
    let size = view.bounds.size
    bitmap.size = size
    view.cacheDisplayInRect(view.bounds, toBitmapImageRep: bitmap)

    let image = NSImage(size: size)
    image.addRepresentation(bitmap)
    
    return image
  }
}
