import AppKit.NSImage
import Verbena
import XCTest

class NSImageRenderTests: XCTestCase {
  var image: NSImage!

  override func setUp() {
    super.setUp()

    image = NSImage.render(CGSize(width: 100, height: 100)) { size in
      let ovalPath = NSBezierPath(ovalIn: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      NSColor.black.setFill()
      ovalPath.fill()
    }
  }

  func testImageIsDrawnInContext() {
    XCTAssertEqual(image.size.width, 100)
  }
}
