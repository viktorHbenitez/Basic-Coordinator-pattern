//
//  BuyCoordinator.swift
//  Coordinator-pattern-Example1
//
//  Created by Victor Hugo Benitez Bosques on 31/08/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit
class BuyCoordinator: Coordinator {
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController

  // The child can tell the parent when work has finished.
  weak var parentCoordinator: MainCoordinator?

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let vc = BuyViewController.instantiate()
    vc.coordinator = self
    navigationController.pushViewController(vc, animated: true)
  }
  
}
