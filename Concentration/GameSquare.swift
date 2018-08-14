//
//  GameSquare.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit

// A game square subclasses SKSpriteNode
class GameSquare: SKSpriteNode {
  // Define two properties
  var isFlipped: Bool = true
  var myColor: colors
  
  // Initialize the GameSquare
  init(color: colors, size: CGSize) {
    
    // Must initialize this before calling super!
    self.myColor = color
    // Must call super with the designated initializer
    super.init(texture: nil, color: color.toUIColor(), size: size)
    // This object accepts touch events
    isUserInteractionEnabled = true
  }
  
  // Flip the square
  func flip() {
    isFlipped = !isFlipped
    if isFlipped {
      color = myColor.toUIColor()
    } else {
      color = colors.gray.toUIColor()
    }
  }
  
  // Handle touch events
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    flip()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
