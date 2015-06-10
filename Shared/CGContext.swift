import CoreGraphics

public extension CGContext {
  public func setFillColor(color: CGColor) {
    CGContextSetFillColorWithColor(self, color)
  }

  public func setStrokeColor(color: CGColor) {
    CGContextSetStrokeColorWithColor(self, color)
  }

  public func setStrokeWidth(width: Float) {
    CGContextSetLineWidth(self, CGFloat(width))
  }

  public func setLineCap(lineCap: CGLineCap) {
    CGContextSetLineCap(self, lineCap)
  }

  public func setLineJoin(lineJoin: CGLineJoin) {
    CGContextSetLineJoin(self, lineJoin)
  }

  public func setMiterLimit(miterLimit: Float) {
    CGContextSetMiterLimit(self, CGFloat(miterLimit))
  }

  public func setLineDash(lengths: [CGFloat], phase: CGFloat = 0.0) {
    lengths.withUnsafeBufferPointer { buffer in
      CGContextSetLineDash(self, phase, buffer.baseAddress, lengths.count)
    }
  }

  public func setFlatness(flatness: Float) {
    CGContextSetFlatness(self, CGFloat(flatness))
  }

  public func setAlpha(alpha: Float) {
    CGContextSetAlpha(self, CGFloat(alpha))
  }

  public func setBlendMode(blendMode: CGBlendMode) {
    CGContextSetBlendMode(self, blendMode)
  }

  public func addPath(path: CGPathRef) -> () {
    CGContextAddPath(self, path)
  }

  public func strokeAllPaths() -> () {
    CGContextStrokePath(self)
  }

  public func fillRect(rect: CGRect) {
    CGContextFillRect(self, rect)
  }

  public func fillEllipseInRect(rect: CGRect) {
    CGContextFillEllipseInRect(self, rect)
  }

  public func rotate(#pivotPoint: CGPoint, angle: Double) {
    CGContextTranslateCTM(self, pivotPoint.x, pivotPoint.y);
    CGContextRotateCTM(self, CGFloat(angle));
    CGContextTranslateCTM(self, -pivotPoint.x, -pivotPoint.y);
  }
}
