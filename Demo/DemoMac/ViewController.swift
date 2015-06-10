import Cocoa
import Verbena

class ViewController: NSViewController {
  @IBOutlet weak var imageView: NSImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    imageView.image = NSImage.render(CGSize(width: 200, height: 200), transparency: true) { size in
      var ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      NSColor(hue: 0.289, saturation: 0.485, brightness: 0.792, alpha: 1.0).setFill()
      ovalPath.fill()
    }
  }
}
