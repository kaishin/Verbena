import Cocoa
import Verbena

class ViewController: NSViewController {
  @IBOutlet weak var imageView: NSImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    imageView.image = NSImage.render(CGSize(width: 200, height: 200), transparency: true) { size in
      let ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      NSColor(hue: 0.289, saturation: 0.485, brightness: 0.792, alpha: 1.0).setFill()
      ovalPath.fill()

      let letterPath = NSBezierPath()
      let startPoint = CGPoint(x: 48, y: 140)
      letterPath.moveToPoint(startPoint)
      letterPath.lineToPoint(CGPoint(x: 76, y: 135))
      letterPath.lineToPoint(CGPoint(x: 100, y: 90))
      letterPath.lineToPoint(CGPoint(x: 122, y: 135))
      letterPath.lineToPoint(CGPoint(x: 150, y: 140))
      letterPath.lineToPoint(CGPoint(x: 100, y: 42))
      letterPath.lineToPoint(startPoint)
      letterPath.closePath()
      NSColor.whiteColor().setFill()
      letterPath.fill()
    }
  }
}
