//
//  GameScene.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene2: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
      print("Did move to view game scene")
      
      // Make a function to display boxes in a grid
      makeBoxes()
    }
  
  func makeBoxes() {
    let boxSize = CGSize(width: 40, height: 40)
    
    let w = size.width
    let h = size.height
    
    let offsetX = ((w - (50 * 4)) / 2) - 25
    let offsetY = ((h - (50 * 4)) / 2) - 25
    
    for row in 1 ... 4 {
      for col in 1 ... 4 {
        let box = SKSpriteNode(color: .red, size: boxSize)
        box.position.x = CGFloat(col) * 50 + offsetX
        box.position.y = CGFloat(row) * 50 + offsetY
        addChild(box)
      }
    }
  }
}
