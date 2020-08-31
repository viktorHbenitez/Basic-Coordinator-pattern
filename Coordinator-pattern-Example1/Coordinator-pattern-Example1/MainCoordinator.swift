//
//  MainCoordinator.swift
//  Coordinator-pattern-Example1
//
//  Created by Victor Hugo Benitez Bosques on 30/08/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

// it's a class rather than a struct because this coordinator will be share across many view controllers
class MainCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    // Create an instance of our ViewControllers class
    let vc = ViewController.instantiate()
    // sets the coordinator property of our initial view controller, it's able to send messages when its buttons are tapped
    vc.coordinator = self
    // Pushes it onto the navigation controller
    navigationController.pushViewController(vc, animated: false)
  }
  
  func buySubscription() {
      let vc = BuyViewController.instantiate()
      vc.coordinator = self
      navigationController.pushViewController(vc, animated: true)
  }

  func createAccount() {
      let vc = CreateAccountViewController.instantiate()
      vc.coordinator = self
      navigationController.pushViewController(vc, animated: true)
  }
}


/*:
 ## TITLE
 - - - - - - - - - -
 
 Concept: Description
 
 Something is executed in the process
 
 - **Bold**      : Description.
 
 
 qos : Quality of service (priority)
 - user interactive (highest)
 - User initated (second highest)
 - ...
 - background (lowest)
 
 Async (Asynchronous) - Your program does not wait for code to finish. it continues on.
 Sync (Synchronues) - Your program waits for code / task to finish before continuing to the next task
 
 ## SUBTITLE
 Concept : Description
 
 LINK Find more information [Description link](https://www.google.com)
 
 SHOW CODE
 
 ```Swift
 var strParameter : String?
 ```
 IMAGE
 ![image description](image.png)
 */
