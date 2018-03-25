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


PlaygroundPage.current.liveView = liveViewCanvas

//: [Next page 🤓](@next)
