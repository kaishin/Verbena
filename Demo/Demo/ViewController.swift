import UIKit
import Verbena

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

    imageView.image = UIImage.render(CGSize(width: 200, height: 200), transparency: true) { size in
      var ovalPath = UIBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      UIColor(hue: 0.289, saturation: 0.485, brightness: 0.792, alpha: 1.0).setFill()
      ovalPath.fill()

      var letterPath = UIBezierPath()
      let startPoint = CGPoint(x: 48, y: 60)
      letterPath.moveToPoint(startPoint)
      letterPath.addLineToPoint(CGPoint(x: 76, y: 65))
      letterPath.addLineToPoint(CGPoint(x: 100, y: 110))
      letterPath.addLineToPoint(CGPoint(x: 122, y: 65))
      letterPath.addLineToPoint(CGPoint(x: 150, y: 60))
      letterPath.addLineToPoint(CGPoint(x: 100, y: 158))
      letterPath.addLineToPoint(startPoint)
      letterPath.closePath()
      UIColor.whiteColor().setFill()
      letterPath.fill()
    }
  }
}

