<img src="https://raw.github.com/kaishin/Verbena/master/logo.png" width="100" alt="logo" />

# Verbena

[![GitHub release](https://img.shields.io/github/release/kaishin/Verbena.svg)](https://github.com/kaishin/Verbena/releases/latest) [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage) [![CocoaPods](https://img.shields.io/cocoapods/v/Verbena.svg)](https://cocoapods.org/pods/Verbena) ![Swift 4.0](https://img.shields.io/badge/Swift-4.0-orange.svg) ![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS-lightgrey.svg)

A micro-framework that simplifies the task of turning drawing code or views into `UIImage`/`NSImage` instances.

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
- Then run `pod install`.

### Usage

~~~swift
import Verbena

// Get a UIImage from drawing block
let image = UIImage.render(CGSize(width: 100, height: 100)) { size in
  // Drawing code goes here. Example:
  // var ovalPath = UIBezierPath(ovalInRect: CGRect(origin: CGPoint(x: 0, y: 0), size: size))
  // UIColor.blackColor().setFill()
  // ovalPath.fill()
}

// Get a UIImage from a UIView
let image = UIImage.image(from: view)
~~~

The same methods can also be used on OS X with `NSImage` instead.

### License

Copyright 2013-2018 Reda Lemeden. BSD Licence. See LICENSE file for more info.
