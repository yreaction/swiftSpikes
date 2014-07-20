//
//  GameScene.swift
//  swiftSpikes
//
//  Created by yreaction on 20/7/14.
//  Copyright (c) 2014 yreaction. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let birdNode = SKShapeNode(rectOfSize: CGSizeMake(35, 35))
    var gravityVector = CGVectorMake(0, -8)
    
    enum birdDirection {
        case leftDirection
        case rightDirection
        case iddleDirection
    }
    
    override func didMoveToView(view: SKView) {
        //scene setUp
        self.physicsBody = SKPhysicsBody (edgeLoopFromRect: self.frame)
        self.physicsWorld.gravity = CGVectorMake(0, -8)
        
        birdNode.strokeColor = SKColor.clearColor()
        birdNode.fillColor = SKColor.greenColor()
        birdNode.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))
        
        //bird physics
        birdNode.physicsBody = SKPhysicsBody(rectangleOfSize: birdNode.frame.size)
        self.addChild(birdNode)

      
        
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.birdNode.physicsBody.applyImpulse(CGVectorMake(5, 35))

    }
   
    override func update(currentTime: CFTimeInterval) {
    }
}
