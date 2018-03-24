//: [Previous](@previous)

import UIKit
import PlaygroundSupport

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 1024, height: 892))
liveViewCanvas.backgroundColor = UIColor.white

let skyView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 892, height: 250))
skyView.backgroundColor = UIColor(red:0.60, green:0.81, blue:0.98, alpha:1.0)
liveViewCanvas.addSubview(skyView)

let hackathonVenueImageView: UIImageView = UIImageView(image: UIImage(named: "HackathonVenue"))
hackathonVenueImageView.frame = CGRect(x: 185, y: 0, width: 400, height: 250)
liveViewCanvas.addSubview(hackathonVenueImageView)

let leftGreenFieldImageView: UIImageView = UIImageView(image: UIImage(named: "LeftGreenField"))
leftGreenFieldImageView.frame = CGRect(x: 0, y: 249, width: 185, height: 774)
liveViewCanvas.addSubview(leftGreenFieldImageView)

let rightGreenFieldImageView: UIImageView = UIImageView(image: UIImage(named: "RightGreenField"))
rightGreenFieldImageView.frame = CGRect(x: 585, y: 249, width: 185, height: 774)
liveViewCanvas.addSubview(rightGreenFieldImageView)

let pathWayImageView: UIImageView = UIImageView(image: UIImage(named: "PathWay"))
pathWayImageView.frame = CGRect(x: 46, y: 249, width: 670, height: 774)
liveViewCanvas.addSubview(pathWayImageView)

PlaygroundPage.current.liveView = liveViewCanvas

//: [Next](@next)
