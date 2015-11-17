import UIKit.UIImage

extension UIImage {
  /// Renders a `UIImage` instance from a drawing block.
  ///
  /// :param: size The target image size measured in points.
  /// :param: transparency A Boolean flag indicating Whether the rendered image is transparent.
  /// :param: drawingBlockWithSize A drawing block that takes a `CGSize` and returns `Void`.
  /// 
  /// :returns: A newly rendered image.
  public class func render(size: CGSize, transparency: Bool = false, drawingBlockWithSize: CGSize -> Void) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(size, !transparency, 0.0)
    drawingBlockWithSize(size)
    return UIGraphicsGetImageFromCurrentImageContext()
  }

  /// Renders a `UIImage` instance from a `UIView`.
  ///
  /// :param: view The view that will be snapshot.
  ///
  /// :returns: A newly rendered snapshot of the view.
  public class func imageFromView(view: UIView) -> UIImage {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.opaque, 0.0)
    view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
}
