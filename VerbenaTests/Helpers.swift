import UIKit

func imageHasAlpha(_ image: UIImage) -> Bool {
  let alpha = image.cgImage?.alphaInfo
  return (alpha == .first || alpha == .last || alpha == .premultipliedFirst || alpha == .premultipliedLast)
}
