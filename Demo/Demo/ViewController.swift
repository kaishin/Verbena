import UIKit
import Verbena

class ViewController: UIViewController {
  @IBOutlet weak var imageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()

    imageView.image = UIImage.render(imageView.bounds.size, transparency: true) { size in
      let ovalPath = UIBezierPath(ovalIn: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
      UIColor(hue: 0.289, saturation: 0.485, brightness: 0.792, alpha: 1.0).setFill()
      ovalPath.fill()

      let letterPath = UIBezierPath()
      let startPoint = CGPoint(x: 48, y: 60)
      letterPath.move(to: startPoint)
      letterPath.addLine(to: CGPoint(x: 76, y: 65))
      letterPath.addLine(to: CGPoint(x: 100, y: 110))
      letterPath.addLine(to: CGPoint(x: 122, y: 65))
      letterPath.addLine(to: CGPoint(x: 150, y: 60))
      letterPath.addLine(to: CGPoint(x: 100, y: 158))
      letterPath.addLine(to: startPoint)
      letterPath.close()
      UIColor.white.setFill()
      letterPath.fill()
    }
  }
}

