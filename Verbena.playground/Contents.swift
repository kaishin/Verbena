import UIKit
import Verbena

let image = UIImage.render(CGSize(width: 200, height: 200), transparency: true) { size in
  var ovalPath = UIBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
  UIColor.purpleColor().setFill()
  ovalPath.fill()
}
