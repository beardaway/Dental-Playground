import UIKit
import PlaygroundSupport
import AVFoundation

//: [Previous page 🤓](@previous)
/*:
 # Good luck! 🙂🤓👨‍💻👩‍💻🍏
 
 ## Last thoughts
 
 Guys, you've gone a long way reading this book and developing your playgrounds for WWDC 2018 Scholarship. Congrats to anyone who managed to stay on this boat till now 👏 I hope that I managed to somehow get you closer to the idea of attending hackathons and that you cannot wait to find one in your neighbourhood 🙂 Kudos to all WWDC Playground Hackathon participants for creating this wonderful and inspiring atmosphere 👩‍💻👨‍💻
 
 Wish you guys lots of luck in your future adventures and happy coding in our iOS software engineering playground! 🎮💻⌨️🤓
 */

// MARK: Constants

struct Constants {
    static let canvasWidth: Int = 1024
    static let canvasHeight: Int = 892
    static let preferredTextSize: CGFloat = 63.0
    static let preferredFont: String = "Avenir-Heavy"
    static let headsHeight: Int = 120
    static let headsWidth: Int = 120
}

// MARK: Adventure Canvas

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: Constants.canvasHeight))
liveViewCanvas.backgroundColor = UIColor.orange

let finishLabel: UILabel = UILabel(frame: CGRect(x: 120, y: -370, width: 700, height: 70))
finishLabel.text = "To be continued..."
finishLabel.textColor = UIColor.white
finishLabel.font = UIFont(name: Constants.preferredFont, size: Constants.preferredTextSize)
liveViewCanvas.addSubview(finishLabel)

let konradHead: UIImageView = UIImageView(image: UIImage(named: "KonradHead"))
konradHead.frame = CGRect(x: 50, y: 190, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(konradHead)

let yaoHead: UIImageView = UIImageView(image: UIImage(named: "YaoHead"))
yaoHead.frame = CGRect(x: 580, y: 190, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(yaoHead)

let blakeHead: UIImageView = UIImageView(image: UIImage(named: "BlakeHead"))
blakeHead.frame = CGRect(x: 310, y: 500, width: Constants.headsWidth, height: Constants.headsHeight)
liveViewCanvas.addSubview(blakeHead)

// MARK: Adventure Functions

func animateFinishLabel() -> Void {
    UIView.animate(withDuration: 2.0) {
        finishLabel.transform = CGAffineTransform(translationX: 0, y: 740)
    }
}

func rotateScreamingFaces() -> Void {
    UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveLinear, animations: {
        konradHead.transform = konradHead.transform.rotated(by: CGFloat(Double.pi))
        yaoHead.transform = yaoHead.transform.rotated(by: CGFloat(Double.pi))
        blakeHead.transform = blakeHead.transform.rotated(by: CGFloat(Double.pi))
    }) { (finished) in
        rotateScreamingFaces()
    }
}

func tellStory() -> Void {
    let storyTeller: AVSpeechSynthesizer = AVSpeechSynthesizer()
    let storyText: AVSpeechUtterance = AVSpeechUtterance(string: "Here starts the story of great anticipation")
    
    storyText.rate = AVSpeechUtteranceDefaultSpeechRate;
    storyText.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    guard storyTeller.isSpeaking else {
        storyTeller.speak(storyText)
        return
    }
}

animateFinishLabel()

DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
    tellStory()
    rotateScreamingFaces()
}

PlaygroundPage.current.liveView = liveViewCanvas
