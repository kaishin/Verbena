import UIKit.UIImage
import Verbena
import XCTest

class UIImageWithViewTests: XCTestCase {
  var image: UIImage!

  override func setUp() {
    super.setUp()

    let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    view.backgroundColor = UIColor.redColor()
    image = UIImage.imageWithView(view)
  }

  func testImageIsDrawnInContext() {
    XCTAssertEqual(image.size.width, 100)
  }

  func testImageIgnoresAlpha() {
    XCTAssertFalse(imageHasAlpha(image))
  }
}
