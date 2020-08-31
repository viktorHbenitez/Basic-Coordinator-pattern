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
    let child = BuyCoordinator(navigationController: navigationController)
    childCoordinators.append(child)
    child.parentCoordinator = self
    
    child.start()
  }
  
  func createAccount() {
    
  }
  
  func childDidFinish(_ child: Coordinator?) {
      for (index, coordinator) in childCoordinators.enumerated() {
          if coordinator === child {
              childCoordinators.remove(at: index)
              break
          }
      }
  }
}

