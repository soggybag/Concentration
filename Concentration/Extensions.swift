//
//  Extensions.swift
//  Concentration
//
//  Created by mitchell hudson on 8/2/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import Foundation

// Extend the Int
extension Int {
  // Add a Static method to Int
  static func random(n: Int) -> Int {
    // Return a random number from 0 to n - 1
    return Int(arc4random() % UInt32(n))
  }
}
