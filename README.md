# Verbena
Core Graphics helper methods.

## How to use
If you find yourself often writing this:

```objective-c
UIGraphicsBeginImageContextWithOptions();
// ...
UIImage *renderedImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();
```

Then Verbena is for you:

```objective-c
UIImage *backgroundImage = [KSVerbenaRenderer renderImageWithSize:CGSizeMake(200, 204) transparency:YES andDrawingBlock:^{
    // Custom Core Graphics drawing code
}];
```

Add this to your Podfile:

```
pod 'Verbena'
```

Then run:

```
pod install
```
Demo:

![Demo](https://raw.github.com/kaishin/Verbena/master/screenshot.png)

## Roadmap

- Add helper methods for generating basic shapes
- Add helper methods for generating gradients, borders and shadows

## License

BSD Licenced
