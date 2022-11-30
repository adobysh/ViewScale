//
//  UILabel+Scale.swift
//  ViewScale
//
//  Created by Andrei Dobysh on 30.11.22.
//

import Foundation
import UIKit

/// Implementation of `UILabel` scaling.
extension UILabel {
    
  /// This method will scale the font of `UILabel`.
  ///
  /// - Parameters:
  ///   - k: The scale coefficient.
  func scaleFont(_ k: CGFloat) {
    let fontSize = font.pointSize
    font = font.withSize(fontSize * k)
  }
    
}
