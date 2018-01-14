import UIKit.UIImage
import Verbena
import XCTest

class UIImageRenderTests: XCTestCase {
  var image: UIImage!

  override func setUp() {
    super.setUp()

    image = UIImage.render(CGSize(width: 100, height: 100)) { size in
      let ovalPath = UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      UIColor.black.setFill()
      ovalPath.fill()
    }
  }

  func testImageIsDrawnInContext() {
    XCTAssertEqual(image.size.width, 100)
  }

  func testImageIgnoresAlpha() {
    XCTAssertFalse(imageHasAlpha(image))
  }
}
