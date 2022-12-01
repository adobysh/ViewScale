# ViewScale

<p align="left">
    <img src="https://img.shields.io/badge/Swift-5.0-orange.svg" />
    <a href="https://cocoapods.org/pods/ViewScale">
        <img src="https://img.shields.io/cocoapods/v/ViewScale.svg?style=flat" alt="Pod Version">
    </a>
    <a href="https://github.com/adobysh/ViewScale/blob/main/LICENSE">
        <img src="https://img.shields.io/badge/Licence-MIT-green.svg" alt="License">
    </a>
    <a href="https://www.linkedin.com/in/adobysh">
        <img src="https://img.shields.io/badge/contact-Andrew Dobysh-blue.svg?style=flat&logo=linkedin" alt="LinkedIn: Andrew Dobysh" />
    </a>
</p>

**ViewScale** Automatically scales UI for small screens saving development time with only one line of code.
You can create UI for iPhone 14 and will get UI for other models like iPhone 5 or iPhone 8 with only one line of code.
[You can find more details about the implementation in my article](https://hackernoon.com/get-the-same-ui-for-all-iphone-screens-using-nslayoutconstraint-scaling).

<p align="center">
    <img src="https://raw.githubusercontent.com/adobysh/ViewScale/main/Demo.png" width="500" max-width="80%" alt="Demo" />
</p>

## Requirements

- iOS 12.4+
- Xcode 13.2.1+
- Swift 5.0+

## Installation
#### CocoaPods
Add the following line to your `Podfile`:
```
pod 'ViewScale'
```

#### Manual
Just drag `UIView+Scale.swift`, `UILabel+Scale.swift` and `UIButton+Scale.swift` to your project.

## How to use
#### Add `view.scale()` into `viewDidLoad()` method of your view controller
```swift
override func viewDidLoad() {
  super.viewDidLoad()
  view.scale()
}
```

## Customize
You can change scale coefficient for 320x568 points screen size iPhones like iPhone 5, SE gen 1 etc:
```swift
view.scale(kFor5: 0.75)
```

You can change scale coefficient for 375x667 points screen size iPhones like iPhone 8, SE gen 2 etc:
```swift
view.scale(kFor8: 0.85)
```

Or you can change scale coefficient for both 320x568 and 375x667 points screen size:
```swift
view.scale(kFor5: 0.75, kFor8: 0.85)
```

## Example
UI before usage (Storyboard implemented for iPhone 13 Pro only):
<p align="center">
    <img src="https://raw.githubusercontent.com/adobysh/ViewScale/main/Demo_Before.png" width="500" max-width="80%" alt="Demo Before" />
</p>

After usage of `view.scase()`:
<p align="center">
    <img src="https://raw.githubusercontent.com/adobysh/ViewScale/main/Demo.png" width="500" max-width="80%" alt="Demo After" />
</p>

## DEMO
There is a demo project added to this repository, so you can see how it works.

## Credit/Inspiration
ViewScale was inspired by my laziness.

## License
This software is released under the MIT License.
