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
  case orange
  case pink
  
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
    case .orange:
      return UIColor.orange
    case .pink:
      return UIColor(displayP3Red: 1, green: 0.65, blue: 0.65, alpha: 1)
    }
  }
  
  // Add a static method
  static func random() -> colors {
    // Define a list of all cases
    let allColors = [colors.red, .green, .blue, .cyan, .yellow, .magenta, .orange, .pink]
    // get a random index
    let index = Int.random(n: allColors.count)
    // return a random color
    return allColors[index]
  }
}
