//
//  GameScene.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
  
  // Initialize this scene
  override func didMove(to view: SKView) {
    print("Did move to view game scene")
    makeBoxes()
  }
  
  // Make some boxes
  func makeBoxes() {
    // define the size for a box
    let boxSize = CGSize(width: 40, height: 40)
    
    // get the width and height of the screen
    let w = size.width
    let h = size.height
    
    // calculate the offset
    let offsetX = ((w - (50 * 4)) / 2) - 25
    let offsetY = ((h - (50 * 4)) / 2) - 25
    
    // loop through the rows and cols
    for row in 1 ... 4 {
      for col in 1 ... 4 {
        // Make a GameSquare
        let box = GameSquare(color: colors.random(), size: boxSize)
        // Position the box
        box.position.x = CGFloat(col) * 50 + offsetX
        box.position.y = CGFloat(row) * 50 + offsetY
        // Add the box to the display list
        addChild(box)
      }
    }
  }
}
