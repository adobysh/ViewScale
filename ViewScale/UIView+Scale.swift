//
//  UIView+Scale.swift
//  ViewScale
//
//  Created by Andrei Dobysh on 31.07.22.
//

import Foundation
import UIKit

/// Implementation of UI scaling.
public extension UIView {
    
  /// This recursive method allows you to access each `UIView` in the view hierarchy.
  ///
  /// - Parameters:
  ///   - level: Current level in the view hierarchy.
  ///   - body: Closure to execute the code for each `UIView`.
  fileprivate func callRecursively(level: Int = 0, _ body: (_ subview: UIView, _ level: Int) -> Void) {
    body(self, level)
    subviews.forEach { $0.callRecursively(level: level + 1, body) }
  }
  
  @available(*, deprecated, message: "Use method `scale()` instead")
  func scaleDemo(kFor5: CGFloat? = nil, kFor8: CGFloat? = nil) {
    scale(kFor5: kFor5, kFor8: kFor8)
  }
    
  /// This method will scale all constraints into the `UIView` including all subviews.
  ///
  /// - Parameters:
  ///   - kFor5: The scale а coefficient for 320x568 points screen size iPhones like iPhone 5, SE gen 1 etc.
  ///   - kFor8: The scale а coefficient for 375x667 points screen size iPhones like iPhone 6, 7, 8, SE gen 2 etc.
  func scale(kFor5: CGFloat? = nil, kFor8: CGFloat? = nil) {
    var scaleFactor = min(UIScreen.main.bounds.width / 390, 1)
    if let kFor5 = kFor5,
        UIScreen.main.bounds.width <= 320 {
      scaleFactor = scaleFactor * kFor5
    } else if let kFor8 = kFor8,
                UIScreen.main.bounds.width <= 375,
                UIScreen.main.bounds.height <= 667 {
      scaleFactor = scaleFactor * kFor8
    }
    
    callRecursively { (subview, level) in
      guard level != 0 else { return }
      if let label = subview as? UILabel {
          label.scaleFont(scaleFactor)
      }
      if let button = subview as? UIButton {
          button.scaleFont(scaleFactor)
      }
      
      for constraint in subview.constraints {
        if constraint.constant != 0 {
          constraint.constant = CGFloat(constraint.constant) * scaleFactor
        }
      }
    }
  }
  
}
