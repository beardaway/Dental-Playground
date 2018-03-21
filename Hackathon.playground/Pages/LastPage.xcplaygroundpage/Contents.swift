import UIKit
import PlaygroundSupport
import AVFoundation

// Constants

struct Constants {
    static let preferredTextSize: CGFloat = 63.0
    static let preferredEmojiSize: CGFloat = 100.0
    static let preferredEmoji: String = "😱"
}

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 1024, height: 892))
liveViewCanvas.backgroundColor = UIColor.orange

let finishLabel: UILabel = UILabel(frame: CGRect(x: 120, y: -370, width: 700, height: 70))
finishLabel.text = "To be continued..."
finishLabel.textColor = UIColor.white
finishLabel.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredTextSize)
liveViewCanvas.addSubview(finishLabel)

let screamLabelOne: UILabel = UILabel(frame: CGRect(x: 320, y: 110, width: 100, height: 100))
screamLabelOne.text = Constants.preferredEmoji
screamLabelOne.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredEmojiSize)
liveViewCanvas.addSubview(screamLabelOne)

let screamLabelTwo: UILabel = UILabel(frame: CGRect(x: 320, y: 610, width: 100, height: 100))
screamLabelTwo.text = Constants.preferredEmoji
screamLabelTwo.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredEmojiSize)
liveViewCanvas.addSubview(screamLabelTwo)

func animateFinishLabel() -> Void {
    UIView.animate(withDuration: 2.0) {
        finishLabel.transform = CGAffineTransform(translationX: 0, y: 740)
    }
}

func rotateScreamingFaces() -> Void {
    UIView.animate(withDuration: 1.2, delay: 0.0, options: .curveLinear, animations: {
        screamLabelOne.transform = screamLabelOne.transform.rotated(by: CGFloat(M_PI))
        screamLabelTwo.transform = screamLabelTwo.transform.rotated(by: CGFloat(M_PI))
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

//: [Previous page 🤓](@previous)
