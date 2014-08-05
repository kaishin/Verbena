import UIKit

extension UIBezierPath {
  func fill(#color: UIColor) {
    color.setFill()
    self.fill()
    UIColor.clearColor().setFill()
  }
}
