//
//  Colors.swift
//  Concentration
//
//  Created by mitchell hudson on 8/2/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit

enum colors {
  case gray
  case red
  case green
  case blue
  case cyan
  case yellow
  case magenta
  
  func toUIColor() -> UIColor {
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
  
  static func random() -> colors {
    let allColors = [colors.red, .green, .blue, .cyan, .yellow, .magenta]
    let index = Int(arc4random() % UInt32(allColors.count))
    return allColors[index]
  }
}
