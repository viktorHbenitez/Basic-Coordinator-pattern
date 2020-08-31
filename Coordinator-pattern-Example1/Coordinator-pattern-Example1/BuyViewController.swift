//
//  BuyViewController.swift
//  Coordinator-pattern-Example1
//
//  Created by Victor Hugo Benitez Bosques on 30/08/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class BuyViewController: UIViewController, Storyboarded {
  
  weak var coordinator: BuyCoordinator?
  
  var selectedProduct : Int?

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("Segment selected", selectedProduct)
    // Do any additional setup after loading the view.
  }
  
  
}
