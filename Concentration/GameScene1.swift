//
//  GameScene.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene1: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
      print("Did move to view game scene")
      
      // Step one make a box and get it onto the screen
      
      // define size
      let boxSize = CGSize(width: 40, height: 40)
      
      // Make a box
      let box = SKSpriteNode(color: .red, size: boxSize)
      // add it as a child
      addChild(box)
      // move it to the center of the screen
      box.position.x = size.width / 2
      box.position.y = size.height / 2
    }
}
