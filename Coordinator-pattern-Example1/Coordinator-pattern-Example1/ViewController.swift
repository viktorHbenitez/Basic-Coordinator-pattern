//
//  ViewController.swift
//  Coordinator-pattern-Example1
//
//  Created by Victor Hugo Benitez Bosques on 30/08/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
  
  weak var coordinator: MainCoordinator?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("viewController")
  }
  
  
  @IBAction func tappedBuy(){
    coordinator?.buySubscription()
  }
  
  
  @IBAction func tappedCreateAccoun(){
    coordinator?.createAccount()
  }
  
  
  
  
  
  
}

