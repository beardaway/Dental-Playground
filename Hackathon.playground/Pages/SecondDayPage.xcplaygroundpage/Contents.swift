//: [Previous page 🤓](@previous)

import Foundation
import UIKit
import AVFoundation
import PlaygroundSupport

struct Constants {
    static let canvasHeight: Int = 892
    static let canvasWidth: Int = 1024
}

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: Constants.canvasHeight))
liveViewCanvas.backgroundColor = UIColor(red: 0.00, green: 0.67, blue: 0.54, alpha: 1.0)

let windowImageView: UIImageView = UIImageView(image: UIImage(named: "Window"))
windowImageView.frame = CGRect(x: 10, y: 40, width: 745, height: 170)
liveViewCanvas.addSubview(windowImageView)

let grassImageView: UIImageView = UIImageView(image: UIImage(named: "Grass"))
grassImageView.frame = CGRect(x: 33, y: 165, width: 700, height: 30)
liveViewCanvas.addSubview(grassImageView)

let deskView: UIView = UIView(frame: CGRect(x: 0, y: 450, width: Constants.canvasWidth, height: 50))
deskView.backgroundColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0)
liveViewCanvas.addSubview(deskView)

let iMacOne: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacOne.frame = CGRect(x: 10, y: 275, width: 220, height: 180)
liveViewCanvas.addSubview(iMacOne)

let iMacTwo: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacTwo.frame = CGRect(x: 275, y: 275, width: 220, height: 180)
liveViewCanvas.addSubview(iMacTwo)

let iMacThree: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacThree.frame = CGRect(x: 535, y: 275, width: 220, height: 180)
liveViewCanvas.addSubview(iMacThree)

let chipsOne: UIImageView = UIImageView(image: UIImage(named: "Chips"))
chipsOne.frame = CGRect(x: 180, y: 370, width: 70, height: 100)
liveViewCanvas.addSubview(chipsOne)

let chipsTwo: UIImageView = UIImageView(image: UIImage(named: "Chips"))
chipsTwo.frame = CGRect(x: 435, y: 370, width: 70, height: 100)
liveViewCanvas.addSubview(chipsTwo)

let sparklingWaterOne: UIImageView = UIImageView(image: UIImage(named: "SparklingWater"))
sparklingWaterOne.frame = CGRect(x: 245, y: 385, width: 30, height: 90)
liveViewCanvas.addSubview(sparklingWaterOne)

let sparklingWaterTwo: UIImageView = UIImageView(image: UIImage(named: "SparklingWater"))
sparklingWaterTwo.frame = CGRect(x: 505, y: 385, width: 30, height: 90)
liveViewCanvas.addSubview(sparklingWaterTwo)

let keyboardOne: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardOne.frame = CGRect(x: 15, y: 460, width: 200, height: 30)
liveViewCanvas.addSubview(keyboardOne)

let keyboardTwo: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardTwo.frame = CGRect(x: 285, y: 460, width: 200, height: 30)
liveViewCanvas.addSubview(keyboardTwo)

let mouse: UIImageView = UIImageView(image: UIImage(named: "Mouse"))
mouse.frame = CGRect(x: 490, y: 462, width: 20, height: 30)
liveViewCanvas.addSubview(mouse)

let keyboardThree: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardThree.frame = CGRect(x: 545, y: 460, width: 200, height: 30)
liveViewCanvas.addSubview(keyboardThree)

let konradPillow: UIImageView = UIImageView(image: UIImage(named: "RedPillow"))
konradPillow.frame = CGRect(x: 25, y: 570, width: 180, height: 180)
liveViewCanvas.addSubview(konradPillow)

let konrad: UIImageView = UIImageView(image: UIImage(named: "KonradBack"))
konrad.frame = CGRect(x: 15, y: 435, width: 200, height: 260)
liveViewCanvas.addSubview(konrad)

let blakePillow: UIImageView = UIImageView(image: UIImage(named: "BluePillow"))
blakePillow.frame = CGRect(x: 300, y: 570, width: 180, height: 180)
liveViewCanvas.addSubview(blakePillow)

let blake: UIImageView = UIImageView(image: UIImage(named: "BlakeBack"))
blake.frame = CGRect(x: 290, y: 435, width: 200, height: 260)
liveViewCanvas.addSubview(blake)

let yaoPillow: UIImageView = UIImageView(image: UIImage(named: "YellowPillow"))
yaoPillow.frame = CGRect(x: 565, y: 570, width: 180, height: 180)
liveViewCanvas.addSubview(yaoPillow)

let yao: UIImageView = UIImageView(image: UIImage(named: "YaoBack"))
yao.frame = CGRect(x: 550, y: 435, width: 200, height: 260)
liveViewCanvas.addSubview(yao)


PlaygroundPage.current.liveView = liveViewCanvas

//: [Next page 🤓](@next)
