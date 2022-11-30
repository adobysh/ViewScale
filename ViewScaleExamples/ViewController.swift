//
//  ViewController.swift
//  ViewScaleExamples
//
//  Created by Andrei Dobysh on 31.07.22.
//

import UIKit
import ViewScale

class ViewController: UIViewController {

  @IBOutlet weak var navigationBar: UINavigationBar?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    /// Just make navigationBar transparent.
    navigationBar?.setBackgroundImage(UIImage(), for: .default)
    navigationBar?.isTranslucent = true
    
    /// Example of usage.
    /// Where `kFor5` is scale а coefficient for 320x568 points screen size iPhones like iPhone 5, SE gen 1 etc
    /// and `kFor8` is scale а coefficient for 375x667 points screen size iPhones like iPhone 8, SE gen 2 etc.
    view.scale(kFor5: 0.75, kFor8: 0.85)
  }

}
