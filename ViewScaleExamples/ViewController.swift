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
    navigationBar.setBackgroundImage(UIImage(), for: .default)
    navigationBar.isTranslucent = true
  }

}

