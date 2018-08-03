//
//  Colors.swift
//  Concentration
//
//  Created by mitchell hudson on 8/2/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit

// Manage colors with an enum

enum colors {
  // Define the cases
  case gray
  case red
  case green
  case blue
  case cyan
  case yellow
  case magenta
  
  // Add an instance method
  func toUIColor() -> UIColor {
    // Return a UIColor for each case
    switch self {
    case .gray:
      return UIColor.gray
    case .red:
      return UIColor.red
    case .green:
      return UIColor.green
    case .blue:
      return UIColor.blue
    case .cyan:
      return UIColor.cyan
    case .yellow:
      return UIColor.yellow
    case .magenta:
      return UIColor.magenta
    }
  }
  
  // Add a static method
  static func random() -> colors {
    // Define a list of all cases
    let allColors = [colors.red, .green, .blue, .cyan, .yellow, .magenta]
    // get a random index
    let index = Int(arc4random() % UInt32(allColors.count))
    // return a random color
    return allColors[index]
  }
}
