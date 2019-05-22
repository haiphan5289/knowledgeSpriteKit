//
//  GameScene.swift
//  Demo_SpriteKit
//
//  Created by HaiPhan on 5/21/19.
//  Copyright © 2019 HaiPhan. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    var nhanvat: SKSpriteNode!
    var minion: SKSpriteNode!
    var nguamap: SKSpriteNode!
    enum vatthe: UInt32 {
        case nhom1 = 1
        case nhom2 = 2
    }
    var player: SKSpriteNode!
    var enemy: SKSpriteNode!
    var timer: Timer!
    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(taonv), userInfo: nil, repeats: true)
//        minion = SKSpriteNode(imageNamed: "minion.jpg")
//        minion.position = CGPoint(x: 0, y: 200)
//        minion.size = CGSize(width: self.frame.width/10, height: self.frame.height/10)
//        //set dộ uu tiên cho hiện lên
//        minion.zPosition = 1
////        minion.physicsBody = SKPhysicsBody(rectangleOf: minion.size)
//        minion.physicsBody = SKPhysicsBody(circleOfRadius: minion.size.height/2)
//        minion.physicsBody?.isDynamic = true
//        //đăng kí img vào catelogri của enum hoặc struct
//        minion.physicsBody?.categoryBitMask = vatthe.nhom1.rawValue
//        //xác định khi va chạm, chỉ cần khác chính nó là đươc
//        minion.physicsBody?.contactTestBitMask = vatthe.nhom2.rawValue
//        self.addChild(minion)
//
        //add trong luc vào tấm hinh
//        minion.physicsBody = SKPhysicsBody(rectangleOf: minion.size)
//        minion.physicsBody?.isDynamic = true

        //khởi tạo và thêm thuộc tính nên đất - nendatleft - nendatright
//        let nendat: SKSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: (self.view?.frame.width)!, height: 30))
//        nendat.position = CGPoint(x: 0, y: -200)
//        self.addChild(nendat)
//
//        nendat.physicsBody = SKPhysicsBody(rectangleOf: nendat.size)
//        nendat.physicsBody?.isDynamic = false
//
//        let nendatleft: SKSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 30, height: (self.view?.frame.height)!))
//        nendatleft.position = CGPoint(x: -self.view!.frame.size.width/2, y: 0)
//        nendatleft.physicsBody = SKPhysicsBody(rectangleOf: nendatleft.size)
//        nendatleft.physicsBody?.isDynamic = false
//        self.addChild(nendatleft)
//
//        let nendatright: SKSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 30, height: (self.view?.frame.height)!))
//        nendatright.position = CGPoint(x: self.view!.frame.size.width/2, y: 0)
//        nendatright.physicsBody = SKPhysicsBody(rectangleOf: nendatright.size)
//        nendatright.physicsBody?.isDynamic = false
//        self.addChild(nendatright)
//
        //add image
//        nguamap = SKSpriteNode(imageNamed: "ngua-map.jpg")
//        nguamap.position = CGPoint(x: minion.position.x + 50, y: 200)
//        nguamap.size = CGSize(width: self.frame.size.width/10, height: self.frame.size.height/10)
////        nguamap.physicsBody = SKPhysicsBody(rectangleOf: nguamap.size)
//        nguamap.physicsBody = SKPhysicsBody(circleOfRadius: nguamap.size.height / 2)
//        nguamap.physicsBody?.isDynamic = true
//        //đăng kí img vào catelogri của enum hoặc struct
//        nguamap.physicsBody?.categoryBitMask = vatthe.nhom2.rawValue
//        //xác định khi va chạm, chỉ cần khác chính nó là đươc
//        nguamap.physicsBody?.contactTestBitMask = vatthe.nhom1.rawValue
////        nguamap.physicsBody?.collisionBitMask = vatthe.nhom2.rawValue
//        self.addChild(nguamap)
//

        //tạo nhân vât - va di chuyên tấm hinh y += 1
//        nhanvat = SKSpriteNode(imageNamed: "flower.jpg")
//        nhanvat.position = CGPoint(x: 0, y: 0)
//        nhanvat.size.width = view.frame.size.width
//        self.addChild(nhanvat)
//
//        var timer: Timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(dichuyeny), userInfo: nil, repeats: true)
        
        //khỏi toạ path và điểm bắt đầu & kiết thúc cho đường thẳng
//        let path: UIBezierPath = UIBezierPath()
//        path.move(to: CGPoint(x: 0, y: 0))
//        path.addLine(to: CGPoint(x: (self.view?.frame.width)!, y: view.frame.height))
        
        //khởi tạo path & điểm bắt đầu & kết thúc cho đường tròn
//        let path: UIBezierPath = UIBezierPath()
//        path.move(to: CGPoint(x: 0, y: 0))
//        path.addCurve(to: CGPoint(x: (self.view?.frame.width)!, y: (self.view?.frame.height)!), controlPoint1: CGPoint(x: 200, y: -200), controlPoint2: CGPoint(x: -200, y: 200))
//
//        //tạo action có chứa path
//        let lineaction: SKAction = SKAction.follow(path.cgPath, duration: 4)
//        //add action vào image
//        nhanvat.run(lineaction)
        
        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }

        // xoat iamge
//        let xoay: SKAction = SKAction.rotate(toAngle: 4, duration: 4)
        //move image, move tới điểm
//        let move: SKAction = SKAction.move(to: CGPoint(x: -self.frame.width/2, y: -self.frame.height/2), duration: 4)
        //tang & giảm kích thước image
//        let scaleaction: SKAction = SKAction.scale(by: 0.1, duration: 4)
        // chờ image
//        let waito: SKAction = SKAction.wait(forDuration: 2)
//        let xoa: SKAction = SKAction.removeFromParent()
        // tát cả action cùng thực hiên với nhau
//        let listaction: SKAction = SKAction.sequence([xoay,waito,move,waito,scaleaction,waito,xoa])
//        image.run(listaction)
        //tát cả action cùng thực hiên với nhau
//        let groupaction: SKAction = SKAction.group([xoay,move,scaleaction])
//        image.run(groupaction)
//        image.run(xoay)
//        image.run(move)
//        image.physicsBody = SKPhysicsBody(texture: image.texture!, size: image.size)
//        image.physicsBody?.isDynamic = false
        
        //create background land
//        let nendat : SKSpriteNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: self.frame.width, height: 100))
//        nendat.position = CGPoint(x: 0, y: -self.frame.height / 2)
//        self.addChild(nendat)
//
        // bound image & tạoo hiệu ứng trọng lực - false
//        nendat.physicsBody = SKPhysicsBody(rectangleOf: nendat.size)
//        nendat.physicsBody?.isDynamic = false
//
//        let runto: SKAction = SKAction.move(to: CGPoint(x: -self.frame.width/2, y: -self.frame.height/2), duration: 2)
//        let comback: SKAction = SKAction.move(to: CGPoint(x: 0, y: 0), duration: 3)
//        image.run(runto) {
//            image.run(comback)
//        }
//        let tohopactin: SKAction = SKAction.sequence([runto,comback])
        // Sô lần lặp lại action
//        let aclaplai: SKAction = SKAction.repeat(tohopactin, count: 2)
////        image.run(aclaplai)
        // action lặp lại for
        
//        let actforever: SKAction = SKAction.repeatForever(tohopactin)
//        image.run(actforever)
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }

    // di chuyen toa do y
    @objc func dichuyeny(){
        nhanvat.position.y -= 10
        if nhanvat.position.y == -200 {
            nhanvat.position.y = 400
        }
    }
    //create iamge & play sound
    @objc func taonv(){
        //random vị trí x & y từ : -200 -> 200
        let x = Int.random(in: -200..<200)
        let y = Int.random(in: -200..<200)
        let image : SKSpriteNode = SKSpriteNode(imageNamed: "minion.jpg")
        image.position = CGPoint(x: CGFloat(x), y: CGFloat(y))
        image.size = CGSize(width: self.frame.width/10, height: self.frame.height/10)
        self.addChild(image)
        let acplaysound: SKAction = SKAction.playSoundFileNamed("music.mp3", waitForCompletion: false)
        image.run(acplaysound)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
//        taonv()
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self))
            // khởi tạo điểm đầu & cuối của vector
            //Vector: là hướng di chuyển của lực
//            minion.physicsBody?.velocity = CGVector(dx: 0,dy: 0)
//            minion.physicsBody?.applyImpulse(CGVector(dx: t.location(in: self).x, dy: t.location(in: self).y))
//            nguamap.position.x = minion.position.x + 50
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    func didBegin(_ contact: SKPhysicsContact) {
//        var firstbody = SKPhysicsBody()
//        var secondbody = SKPhysicsBody()
//        if contact.bodyA.node?.name == "Player"{
//            firstbody = contact.bodyA
//            secondbody = contact.bodyB
//        }
//        else {
//            firstbody = contact.bodyB
//            secondbody = contact.bodyA
//        }
//        if firstbody.node?.name == "Player" && secondbody.node?.name == "Enemy"{
//            print("hihi")
//        }
//        let contactmask = contact.bodyA.collisionBitMask | contact.bodyB.collisionBitMask
//        switch (contactmask) {
//        case vatthe.nhom1.rawValue | vatthe.nhom2.rawValue:
//            nguamap.removeFromParent()
//            print("hhii")
//        default:
//            return
//        }
        if contact.bodyA.categoryBitMask == vatthe.nhom1.rawValue || contact.bodyB.categoryBitMask == vatthe.nhom1.rawValue {
            if contact.bodyA.categoryBitMask == vatthe.nhom2.rawValue || contact.bodyB.categoryBitMask == vatthe.nhom2.rawValue {
                //khai báo đường dẫn tới file hiệu ứng
                let fire = Bundle.main.path(forResource: "fire", ofType: "sks")
                //chuyển fire thanh Emitternode
                var no = NSKeyedUnarchiver.unarchiveObject(withFile:  fire!) as! SKEmitterNode
                //khai báo vị trí nổ = ví trí va chạm
                no.position = contact.contactPoint
                //add nở vào scense
                self.addChild(no)
                no.removeFromParent()
                return
            }
        }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
