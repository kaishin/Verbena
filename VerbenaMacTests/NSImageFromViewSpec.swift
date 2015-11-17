import AppKit.NSImage
import Verbena
import XCTest

class NSImageFromViewTests: XCTestCase {
  var image: NSImage!

  override func setUp() {
    super.setUp()

    let view = NSView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    view.wantsLayer = true
    view.layer?.backgroundColor = NSColor.redColor().CGColor
    image = NSImage.imageFromView(view)
  }

  func testImageIsDrawnInContext() {
    XCTAssertEqual(image.size.width, 100)
  }
}
