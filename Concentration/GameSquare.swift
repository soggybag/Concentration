//
//  GameSquare.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit

class GameSquare: SKSpriteNode {
  
  var isFlipped: Bool = true
  var myColor: colors
  
  init(color: colors, size: CGSize) {
    self.myColor = color
    
    super.init(texture: nil, color: color.toUIColor(), size: size)
    
    isUserInteractionEnabled = true
  }
  
  func flip() {
    isFlipped = !isFlipped
    if isFlipped {
      color = myColor.toUIColor()
    } else {
      color = colors.gray.toUIColor()
    }
  }
  
  override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    flip()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
