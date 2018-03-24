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

let playgroundSignImageViewOne: UIImageView = UIImageView(image: UIImage(named: "RoadSign"))
playgroundSignImageViewOne.frame = CGRect(x: 10, y: 240, width: 130, height: 150)
liveViewCanvas.addSubview(playgroundSignImageViewOne)

let playgroundSignImageViewTwo: UIImageView = UIImageView(image: UIImage(named: "RoadSign"))
playgroundSignImageViewTwo.frame = CGRect(x: 630, y: 240, width: 130, height: 150)
liveViewCanvas.addSubview(playgroundSignImageViewTwo)

let treeOne: UIImageView = UIImageView(image: UIImage(named: "SmallTree"))
treeOne.frame = CGRect(x: 90, y: 320, width: 100, height: 140)
liveViewCanvas.addSubview(treeOne)

let treeTwo: UIImageView = UIImageView(image: UIImage(named: "SmallTree"))
treeTwo.frame = CGRect(x: 592, y: 320, width: 100, height: 140)
liveViewCanvas.addSubview(treeTwo)

let treeThree: UIImageView = UIImageView(image: UIImage(named: "MediumTree"))
treeThree.frame = CGRect(x: 625, y: 600, width: 130, height: 200)
liveViewCanvas.addSubview(treeThree)

let treeFour: UIImageView = UIImageView(image: UIImage(named: "MediumTree"))
treeFour.frame = CGRect(x: 12, y: 600, width: 130, height: 200)
liveViewCanvas.addSubview(treeFour)

let teslaImageView: UIImageView = UIImageView(image: UIImage(named: "Car"))
teslaImageView.frame = CGRect(x: 900, y: 763, width: 400, height: 130)
liveViewCanvas.addSubview(teslaImageView)

let sunImageView: UIImageView = UIImageView(image: UIImage(named: "Sun"))
sunImageView.frame = CGRect(x: 685, y: 10, width: 70, height: 70)
liveViewCanvas.addSubview(sunImageView)

let sunRayOne: UIImageView = UIImageView(image: UIImage(named: "RayOne"))
sunRayOne.frame = CGRect(x: 640, y: 27, width: 40, height: 12)
liveViewCanvas.addSubview(sunRayOne)

let sunRayTwo: UIImageView = UIImageView(image: UIImage(named: "RayTwo"))
sunRayTwo.frame = CGRect(x: 642, y: 47, width: 40, height: 30)
liveViewCanvas.addSubview(sunRayTwo)

let sunRayThree: UIImageView = UIImageView(image: UIImage(named: "RayThree"))
sunRayThree.frame = CGRect(x: 652, y: 72, width: 40, height: 30)
liveViewCanvas.addSubview(sunRayThree)

let sunRayFour: UIImageView = UIImageView(image: UIImage(named: "RayFour"))
sunRayFour.frame = CGRect(x: 667, y: 85, width: 45, height: 30)
liveViewCanvas.addSubview(sunRayFour)

let sunRayFive: UIImageView = UIImageView(image: UIImage(named: "RayFive"))
sunRayFive.frame = CGRect(x: 710, y: 90, width: 20, height: 40)
liveViewCanvas.addSubview(sunRayFive)

let sunRays: [UIImageView] = [sunRayOne, sunRayTwo, sunRayThree, sunRayFour, sunRayFive]

func sunShine() -> Void {
    UIView.animate(withDuration: 2.0, animations: {
        for ray in sunRays {
            ray.alpha = 0
        }
    }) { (completed) in
        UIView.animate(withDuration: 2.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            for ray in sunRays {
                ray.alpha = 1
            }
        }, completion: { (completed) in
            sunShine()
        })
    }
}

func driveGuysToHackathon() -> Void {
    UIView.animate(withDuration: 7.0) {
        teslaImageView.transform = CGAffineTransform(translationX: -720, y: 0)
    }
}

sunShine()
driveGuysToHackathon()

PlaygroundPage.current.liveView = liveViewCanvas

//: [Next](@next)
