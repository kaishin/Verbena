import AppKit.NSImage
import Verbena
import XCTest

class NSImageTests: XCTestCase {
  var image: NSImage!

  override func setUp() {
    super.setUp()

    image = NSImage.render(CGSize(width: 100, height: 100)) { size in
      let ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      NSColor.blackColor().setFill()
      ovalPath.fill()
    }
  }

  func testImageIsDrawnInContext() {
    XCTAssertEqual(image.size.width, 100)
  }
}
