//
//  UIButton+Scale.swift
//  ViewScale
//
//  Created by Andrei Dobysh on 30.11.22.
//

import Foundation
import UIKit

/// Implementation of `UIButton` scaling.
extension UIButton {
  
  /// This method will scale the font of `UIButton`.
  ///
  /// - Parameters:
  ///   - k: The scale coefficient.
  func scaleFont(_ k: CGFloat) {
    let fontSize: Double = Double(titleLabel?.font.pointSize ?? 0.0)
    titleLabel?.font = titleLabel?.font.withSize(fontSize * k)
  }
  
}
