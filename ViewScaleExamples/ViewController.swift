//
//  ViewController.swift
//  ViewScaleExamples
//
//  Created by Andrew on 31.07.22.
//

import UIKit
import ViewScale

class ViewController: UIViewController {

  @IBOutlet weak var navigationBar: UINavigationBar!
  
  override func viewDidLoad() {
    super.viewDidLoad()
// MARK: if framework works the next line should work
//    view.scale(kFor5: 0.75, kFor8: 0.85) {
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.isTranslucent = true
  }

}

