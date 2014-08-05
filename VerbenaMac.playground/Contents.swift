import AppKit
import Verbena

let image = NSImage.render(CGSize(width: 200, height: 200), transparency: true) { size in
  var ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
  NSColor.purpleColor().setFill()
  ovalPath.fill()
}
