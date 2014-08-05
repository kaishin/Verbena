import UIKit

func imageHasAlpha(image: UIImage) -> Bool {
  let alpha = CGImageGetAlphaInfo(image.CGImage)
  return (alpha == .First || alpha == .Last || alpha == .PremultipliedFirst || alpha == .PremultipliedLast)
}