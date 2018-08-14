//
//  GameScene.swift
//  Concentration
//
//  Created by mitchell hudson on 7/31/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import SpriteKit
import GameplayKit

// Make an array of Moods
// add 10 Moods with values
// Print all the Moods to the console

class GameScene: SKScene {
  
  var squares = [GameSquare]()
  
  // Initialize this scene
  override func didMove(to view: SKView) {
    print("Did move to view game scene")
    makeBoxes(rows: 4, cols: 4)
    reset()
  }
  
  func reset() {
    // An array of all the colors
    let allColors = [colors.blue, .cyan, .green, .magenta, .red, .yellow, .orange, .pink]
    // Make an array with two of each color
    var twoColors = [colors]()
    for color in allColors {
      twoColors.append(color)
      twoColors.append(color)
    }
    // Randomized array of color pairs
    var randomColorPairs = [colors]()
    while twoColors.count > 0 {
      randomColorPairs.append(twoColors[Int.random(n: twoColors.count)])
    }
    
    for i in 0 ..< squares.count {
      squares[i].myColor = randomColorPairs[i]
    }
  }
  
  // Make some boxes
  func makeBoxes(rows: Int, cols: Int) {
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
        let square = GameSquare(color: colors.random(), size: boxSize)
        // Position the box
        square.position.x = CGFloat(col) * 50 + offsetX
        square.position.y = CGFloat(row) * 50 + offsetY
        // Add the box to the display list
        addChild(square)
        squares.append(square)
      }
    }
  }
}
