//
//  Coordinator.swift
//  Coordinator-pattern-Example1
//
//  Created by Victor Hugo Benitez Bosques on 30/08/20.
//  Copyright © 2020 Victor Hugo Benitez Bosques. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}



