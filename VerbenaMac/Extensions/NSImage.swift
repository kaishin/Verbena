import AppKit.NSImage

extension NSImage {
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
}
