import UIKit
import PlaygroundSupport
import Foundation
import AVFoundation

// Constants

struct Constants {
    static let preferredTextSize: CGFloat = 63.0
    static let preferredEmojiSize: CGFloat = 100.0
    static let preferredEmoji: String = "🤓"
}

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 1024, height: 892))
liveViewCanvas.backgroundColor = UIColor.orange
    
let introLabel: UILabel = UILabel(frame: CGRect(x: 90, y: 370, width: 600, height: 90))
introLabel.text = "Once upon a time..."
introLabel.textColor = UIColor.white
introLabel.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredTextSize)
introLabel.alpha = 0
liveViewCanvas.addSubview(introLabel)

let geekEmojiOne: UILabel = UILabel(frame: CGRect(x: 100, y: 130, width: 100, height: 100))
geekEmojiOne.text = Constants.preferredEmoji
geekEmojiOne.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredEmojiSize)
liveViewCanvas.addSubview(geekEmojiOne)

let geekEmojiTwo: UILabel = UILabel(frame: CGRect(x: 610, y: 610, width: 100, height: 100))
geekEmojiTwo.text = Constants.preferredEmoji
geekEmojiTwo.font = UIFont(name: "Avenir-Heavy", size: Constants.preferredEmojiSize)
liveViewCanvas.addSubview(geekEmojiTwo)

let zero: UIImageView = UIImageView(image: UIImage(named: "Zero"))
let one: UIImageView = UIImageView(image: UIImage(named: "One"))
let binaries: [UIImageView] = [zero, one]

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

func animateGeekEmojis() -> Void {
    UIView.animate(withDuration: 6.5) {
        geekEmojiOne.transform = CGAffineTransform(translationX: 510, y: 0)
        geekEmojiTwo.transform = CGAffineTransform(translationX: -510, y: 0)
    }
}

animateIntroLabel()
animateGeekEmojis()
tellStory()


PlaygroundPage.current.liveView = liveViewCanvas

//: [Next page 🤓](@next)
