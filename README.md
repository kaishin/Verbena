<img src="https://raw.github.com/kaishin/Verbena/master/logo.png" width="100" alt="logo" />

# Verbena [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

A micro-framework that simplifies the task if turning drawing code into `UIImage`/`NSImage` instances.

### Installation
#### [Carthage](https://github.com/Carthage/Carthage)

- Add the following to your Cartfile: `github "kaishin/Verbena"`
- Then run `carthage update`
- Follow the current instructions in [Carthage's README][carthage-installation]
for up to date installation instructions.

[carthage-installation]: https://github.com/Carthage/Carthage#adding-frameworks-to-an-application

#### [CocoaPods](http://cocoapods.org)

- Add the following to your [Podfile](http://guides.cocoapods.org/using/the-podfile.html): `pod 'Verbena'`
- You will also need to make sure you're opting into using frameworks: `use_frameworks!`
- Then run `pod install` with CocoaPods 0.36 or newer.

#### Git Submodules

- Add this repo as a submodule, and add the project file to your workspace. You
can then link against `Verbena.framework` for your application target.

### Usage

After importing Verbena, you will have at your disposal a class method for both `UIImage` and `NSImage`:

```swift
render(size: CGSize, transparency: Bool = false, drawingBlockWithSize: CGSize -> Void)`
```

##### iOS

```swift
import Verbena

let image = UIImage.render(CGSize(width: 100, height: 100)) { size in
  // Drawing code goes here. Example:
  // var ovalPath = UIBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
  // UIColor.blackColor().setFill()
  // ovalPath.fill()
}
```

##### Mac

```swift
import Verbena

let image = NSImage.render(CGSize(width: 100, height: 100)) { size in
  // Drawing code goes here. Example:
  // var ovalPath = NSBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
  // NSColor.blackColor().setFill()
  // ovalPath.fill()
}
```

### License

Copyright 2013-2015 Reda Lemeden. BSD Licence. See LICENSE file for more info.
