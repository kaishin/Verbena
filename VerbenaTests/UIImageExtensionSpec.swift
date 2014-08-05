import Quick
import Nimble
import UIKit.UIImage

class UIImageExtensionSpec: QuickSpec {
  override func spec() {
    describe("UIImageExtension") {
      var image: UIImage!

      beforeEach {
        image = UIImage.render(CGSize(width: 100, height: 100)) { size in
          var ovalPath = UIBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
          UIColor.blackColor().setFill()
          ovalPath.fill()
        }
      }

      it("should return instance from drawing code") {
        expect(image.size.width).to(equal(100))
      }

      it("should ignore alpha by default") {
        expect(imageHasAlpha(image)).to(beFalse())
      }
    }
  }
}
