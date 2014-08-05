import UIKit.UIImage

extension UIImage {
  public class func render(size: CGSize, transparency: Bool = false, drawingBlockWithSize: CGSize -> Void) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(size, !transparency, 0.0)
    drawingBlockWithSize(size)
    return UIGraphicsGetImageFromCurrentImageContext()
  }
}
