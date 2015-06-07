import UIKit

extension UIBezierPath {
  /// Fills a path with a given color.
  ///
  /// :param: color The color to use for filling the path.
  public func fill(#color: UIColor) {
    color.setFill()
    self.fill()
    UIColor.clearColor().setFill()
  }
}
