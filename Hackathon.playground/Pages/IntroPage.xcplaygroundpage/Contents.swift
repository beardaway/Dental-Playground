import UIKit
import PlaygroundSupport
import Foundation
import AVFoundation

// Constants

struct Constants {
    static let preferredTextSize: CGFloat = 63.0
    static let headsHeight: Int = 120
    static let headsWidth: Int = 120
}

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 1024, height: 892))
liveViewCanvas.backgroundColor = UIColor.orange
    
let introLabel: UILabel = UILabel(frame: CGRect(x: 90, y: 370, width: 600, height: 90))
introLabel.text = "Once upon a time..."
introLabel.textColor = UIColor.white
introLabel.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredTextSize)
introLabel.alpha = 0
liveViewCanvas.addSubview(introLabel)

// TODO: Change photos of the heads when they will be done

let konradHead: UIImageView = UIImageView(image: UIImage(named: "KonradHead"))
konradHead.frame = CGRect(x: 50, y: 190, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(konradHead)

let yaoHead: UIImageView = UIImageView(image: UIImage(named: "YaoHead"))
yaoHead.frame = CGRect(x: 580, y: 190, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(yaoHead)

let blakeHead: UIImageView = UIImageView(image: UIImage(named: "BlakeHead"))
blakeHead.frame = CGRect(x: 320, y: 500, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(blakeHead)

func tellStory() -> Void {
    let storyTeller: AVSpeechSynthesizer = AVSpeechSynthesizer()
    let storyText: AVSpeechUtterance = AVSpeechUtterance(string: "Once upon a time there was a lot of students who were doing their best to get scholarships to Dub-Dub in San Jose")
    
    storyText.rate = AVSpeechUtteranceDefaultSpeechRate;
    storyText.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    guard storyTeller.isSpeaking else {
        storyTeller.speak(storyText)
        return
    }
}

func animateIntroLabel() -> Void {
    UIView.animate(withDuration: 1.0, animations: {
        introLabel.alpha = 1.0
    }) { (completed) in
        UIView.animate(withDuration: 1.0, delay: 2.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            introLabel.alpha = 0
        }, completion: { (completed) in
            animateIntroLabel()
        })
    }
}

func animateHackerHeads() -> Void {
    UIView.animate(withDuration: 7.0) {
        konradHead.transform = CGAffineTransform(translationX: 180, y: 0)
        yaoHead.transform = CGAffineTransform(translationX: -180, y: 0)
    }
}

animateIntroLabel()
animateHackerHeads()
tellStory()

PlaygroundPage.current.liveView = liveViewCanvas

//: [Next page 🤓](@next)
