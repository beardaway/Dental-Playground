import UIKit
import PlaygroundSupport
import Foundation
import AVFoundation

/*:
 # Hackathon Playground
 
 ![Me AGHacks](AGHacksTwo.jpg)
 
 ### Who am I?
 
 Hi there! I'm Konrad 👋 I'm currently studying Computer Science and Econometrics at AGH University of Science and Technology in Cracow (Poland). I've been working as an iOS Developer for the last 8 months. Previously had been a project manager and a data analyst. But to be honest, the best project in my life that I am really proud of is - **AGHacks**. Till now, the biggest student hackathon in Poland, that I co-organized with a group of friends. In less than 6 months we managed to pursue our passion and create a fantastic and engaging event for more than 500 hackers from all around Europe. It wasn't that easy, but it was the true core that allowed me to follow my career in software engineering and devrel 🤓
 
 ## Why such topic?
 
 A great question, indeed! 🙂 As I'm super excited about both iOS sofware engineering and hackathons, I've decided that I will  marry those topics and use my WWDC Scholarship Playground this year, to tell a compelling story of students all around the world, who try to get WWDC scholarship every year by helping each other and building wonderful apps and playgrounds. Combining business with pleasure have never been so easy 😂 For those of you who haven't taken part in any hackathon yet, I hope this simple animated book will encourage you to attend one too 🙂
 
 ## What is this playground about?
 
 This playground is about large group of students all around the world who love iOS programming and do their best every year by creating robust software to show their passion and get WWDC Scholarships. I intended to tell all of you their story. The story that we can all simply call an online solo hackathon. Enjoy your reading, watching and listening 🙂
 
 ## **Before reading**
 
 As the canvas on the right for each page of this book is 1024x892, it is advisable to enlarge the right part of the playground to experience all its elements 🤩 When going to next pages, the Live View on the right may not load - in this case, please do change it in the upper part of the Live View. On the left side of the playground you can read some interesting content, while listening to the story that will be told and shown on the right. Thank you and enjoy your time ❤️
 */
//: [Next page 🤓](@next)

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
