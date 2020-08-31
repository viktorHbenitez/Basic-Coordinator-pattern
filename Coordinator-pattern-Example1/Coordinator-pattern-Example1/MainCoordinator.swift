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
class MainCoordinator: NSObject, Coordinator, UINavigationControllerDelegate {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    navigationController.delegate = self
    
    // Create an instance of our ViewControllers class
    let vc = ViewController.instantiate()
    // sets the coordinator property of our initial view controller, it's able to send messages when its buttons are tapped
    vc.coordinator = self
    // Pushes it onto the navigation controller
    navigationController.pushViewController(vc, animated: false)
  }
  
  func buySubscription(to type : Int?) {
    let child = BuyCoordinator(navigationController: navigationController)
    child.iType = type
    childCoordinators.append(child)
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
  
  func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
      // Read the view controller we’re moving from.
      guard let fromViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
          return
      }

      // Check whether our view controller array already contains that view controller. If it does it means we’re pushing a different view controller on top rather than popping it, so exit.
      if navigationController.viewControllers.contains(fromViewController) {
          return
      }

      // We’re still here – it means we’re popping the view controller, so we can check whether it’s a buy view controller
      if let buyViewController = fromViewController as? BuyViewController {
          // We're popping a buy view controller; end its coordinator
          childDidFinish(buyViewController.coordinator)
      }
  }
}

