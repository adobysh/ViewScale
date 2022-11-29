//
//  ViewScale.swift
//  ViewScale
//
//  Created by Andrew on 31.07.22.
//

import Foundation

public final class ViewScaleCodeTest {

  let name = "ViewScale"
  
  public func add(a: Int, b: Int) -> Int {
    return a + b
  }
  
  public func sub(a: Int, b: Int) -> Int {
    return a - b
  }
    
}

extension UIView {
    
  func callRecursively(level: Int = 0, _ body: (_ subview: UIView, _ level: Int) -> Void) {
    body(self, level)
    subviews.forEach { $0.callRecursively(level: level + 1, body) }
  }
    
  func scaleDemo(kFor5: CGFloat? = nil, kFor8: CGFloat? = nil) {
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

extension UILabel {
    
    func scaleFont(_ k: CGFloat) {
        let fontSize = font.pointSize
        font = font.withSize(fontSize * k)
    }
    
}

extension UIButton {
  
  func scaleFont(_ k: CGFloat) {
    let fontSize: Double = Double(titleLabel?.font.pointSize ?? 0.0)
    titleLabel?.font = titleLabel?.font.withSize(fontSize * k)
  }
  
}
