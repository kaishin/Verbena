import Quick
import Nimble
import AppKit.NSImage
import Verbena

class NSImageExtensionSpec: QuickSpec {
  override func spec() {
    describe("NSImageExtension") {
      var image: NSImage!

      beforeEach {
        image = NSImage.render(CGSize(width: 100, height: 100)) { size in
          var ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
          NSColor.blackColor().setFill()
          ovalPath.fill()
        }
      }

      it("should return instance from drawing code") {
        expect(image.size.width).to(equal(100))
      }
    }
  }
}
