import UIKit

extension UIImage {
  /// Renders a `UIImage` instance from a drawing block.
  ///
  /// :param: size The target image size measured in points.
  /// :param: transparency A Boolean flag indicating whether the rendered image is transparent.
  /// :param: drawingBlockWithSize A drawing block that takes a `CGSize` and returns `Void`.
  /// 
  /// :returns: A newly rendered image.
  public class func render(_ size: CGSize, transparency: Bool? = nil, prefersExtendedRange: Bool? = nil, drawingBlockWithSize: (CGSize) -> Void) -> UIImage {
    let rendererFormat = UIGraphicsImageRendererFormat.default()
    rendererFormat.opaque = !(transparency ?? !rendererFormat.opaque)
    rendererFormat.prefersExtendedRange = prefersExtendedRange ?? rendererFormat.prefersExtendedRange
    let renderer = UIGraphicsImageRenderer(size: size, format: rendererFormat)

    return renderer.image { context in
      drawingBlockWithSize(size)
    }
  }

  /// Renders a `UIImage` instance from a `UIView`.
  ///
  /// :param: view The view that will be snapshot.
  ///
  /// :returns: A newly rendered snapshot of the view.
  public class func image(from view: UIView, transparency: Bool? = nil, prefersExtendedRange: Bool? = nil) -> UIImage {
    return self.render(view.bounds.size, transparency: transparency, prefersExtendedRange: prefersExtendedRange) { size in
      view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
    }
  }
}
