import UIKit
import PlaygroundSupport
import AVFoundation

//: [Previous page 🤓](@previous)
/*:
 # Hackathon - what is it? 👩‍💻👨‍💻
 
 ![Me AGHacks](AGHacks.jpg)
 
 ## The definition
 
**Hackathon** is an event which gathers computer programmers, designers, project managers and those who are into business, who collaborate on software projects for limited amount of time
 
 ## Core values of every hackathon
 
 This is a list of values that any hackathon in the world should incorporate into their culture:
 
 * Learn
 * Create
 * Share
 
 ## Why is it great to attend hackathons?
 
There are numerous reasons why anyone who is at least somehow into software development, should attend hackathons. The most important thing is that you are able to meet and collaborate with lots of amazing and super-talented people who want to build marvellous stuff. Second things is that you are able to learn new skills during hackathon time, that otherwise you won't be able to learn (cause you probably don't have enough time on a daily basis 🙂). The last thing is that you will be given a chance to build a problem-solving piece of software that will let you become the winner and secure eternal glory 🤴🏽👸🏽.
 */
//: [Next page 🤓](@next)

// MARK: Constants

struct Constants {
    static let canvasHeight: Int = 892
    static let canvasWidth: Int = 1024
    static let roadSignHeight: Int = 150
    static let roadSignWidth: Int = 130
    static let smallTreeWidth: Int = 100
    static let smallTreeHeight: Int = 140
    static let bigTreeWidth: Int = 130
    static let bigTreeHeight: Int = 200
    static let miniHackerHeight: Int = 180
    static let miniHackerWidth: Int = 100
    static let chatCloudWidth: Int = 110
    static let chatCloudHeight: Int = 80
    static let preferredFont: String = "Avenir-Heavy"
    static let greenFieldWidth: Int = 185
    static let greenFieldHeight: Int = 774
}

// MARK: Adventure Canvas

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: Constants.canvasHeight))
liveViewCanvas.backgroundColor = UIColor.white

let skyView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: 250))
skyView.backgroundColor = UIColor(red:0.60, green:0.81, blue:0.98, alpha:1.0)
liveViewCanvas.addSubview(skyView)

let hackathonVenueImageView: UIImageView = UIImageView(image: UIImage(named: "HackathonVenue"))
hackathonVenueImageView.frame = CGRect(x: 185, y: 0, width: 400, height: 250)
liveViewCanvas.addSubview(hackathonVenueImageView)

let leftGreenFieldImageView: UIImageView = UIImageView(image: UIImage(named: "LeftGreenField"))
leftGreenFieldImageView.frame = CGRect(x: 0, y: 249, width: Constants.greenFieldWidth, height: Constants.greenFieldHeight)
liveViewCanvas.addSubview(leftGreenFieldImageView)

let rightGreenFieldImageView: UIImageView = UIImageView(image: UIImage(named: "RightGreenField"))
rightGreenFieldImageView.frame = CGRect(x: 585, y: 249, width: Constants.greenFieldWidth, height: Constants.greenFieldHeight)
liveViewCanvas.addSubview(rightGreenFieldImageView)

let pathWayImageView: UIImageView = UIImageView(image: UIImage(named: "PathWay"))
pathWayImageView.frame = CGRect(x: 46, y: 249, width: 670, height: Constants.greenFieldHeight)
liveViewCanvas.addSubview(pathWayImageView)

let playgroundSignImageViewOne: UIImageView = UIImageView(image: UIImage(named: "RoadSign"))
playgroundSignImageViewOne.frame = CGRect(x: 10, y: 240, width: Constants.roadSignWidth, height: Constants.roadSignHeight)
liveViewCanvas.addSubview(playgroundSignImageViewOne)

let playgroundSignImageViewTwo: UIImageView = UIImageView(image: UIImage(named: "RoadSign"))
playgroundSignImageViewTwo.frame = CGRect(x: 630, y: 240, width: Constants.roadSignWidth, height: Constants.roadSignHeight)
liveViewCanvas.addSubview(playgroundSignImageViewTwo)

let treeOne: UIImageView = UIImageView(image: UIImage(named: "SmallTree"))
treeOne.frame = CGRect(x: 90, y: 320, width: Constants.smallTreeWidth, height: Constants.smallTreeHeight)
liveViewCanvas.addSubview(treeOne)

let treeTwo: UIImageView = UIImageView(image: UIImage(named: "SmallTree"))
treeTwo.frame = CGRect(x: 592, y: 320, width: Constants.smallTreeWidth, height: Constants.smallTreeHeight)
liveViewCanvas.addSubview(treeTwo)

let treeThree: UIImageView = UIImageView(image: UIImage(named: "MediumTree"))
treeThree.frame = CGRect(x: 625, y: 600, width: Constants.bigTreeWidth, height: Constants.bigTreeHeight)
liveViewCanvas.addSubview(treeThree)

let treeFour: UIImageView = UIImageView(image: UIImage(named: "MediumTree"))
treeFour.frame = CGRect(x: 12, y: 600, width: Constants.bigTreeWidth, height: Constants.bigTreeHeight)
liveViewCanvas.addSubview(treeFour)

let konradMini: UIImageView = UIImageView(image: UIImage(named: "KonradMini"))
konradMini.frame = CGRect(x: 200, y: 700, width: Constants.miniHackerWidth, height: Constants.miniHackerHeight)
liveViewCanvas.addSubview(konradMini)

let blakeMini: UIImageView = UIImageView(image: UIImage(named: "BlakeMini"))
blakeMini.frame = CGRect(x: 350, y: 670, width: Constants.miniHackerWidth, height: Constants.miniHackerHeight)
liveViewCanvas.addSubview(blakeMini)

let yaoMini: UIImageView = UIImageView(image: UIImage(named: "YaoMini"))
yaoMini.frame = CGRect(x: 480, y: 700, width: Constants.miniHackerWidth, height: Constants.miniHackerHeight)
liveViewCanvas.addSubview(yaoMini)

let hackers: [UIImageView] = [konradMini, blakeMini, yaoMini]

let konradChat: UIImageView = UIImageView(image: UIImage(named: "RedChatCloud"))
konradChat.frame = CGRect(x: 200, y: 265, width: Constants.chatCloudWidth, height: Constants.chatCloudHeight)
liveViewCanvas.addSubview(konradChat)

let konradChatText: UILabel = UILabel(frame: CGRect(x: 210, y: 262, width: 90, height: 60))
konradChatText.textColor = UIColor.white
konradChatText.font = UIFont(name: Constants.preferredFont, size: 17)
konradChatText.text = "Let's do it!"
liveViewCanvas.addSubview(konradChatText)

let blakeChat: UIImageView = UIImageView(image: UIImage(named: "OrangeChatCloud"))
blakeChat.frame = CGRect(x: 320, y: 280, width: Constants.chatCloudWidth, height: Constants.chatCloudHeight)
liveViewCanvas.addSubview(blakeChat)

let blakeChatText: UILabel = UILabel(frame: CGRect(x: 342, y: 277, width: 70, height: 60))
blakeChatText.textColor = UIColor.white
blakeChatText.font = UIFont(name: Constants.preferredFont, size: 20)
blakeChatText.text = "Finally!"
liveViewCanvas.addSubview(blakeChatText)

let yaoChat: UIImageView = UIImageView(image: UIImage(named: "RedChatCloud"))
yaoChat.frame = CGRect(x: 440, y: 265, width: Constants.chatCloudWidth, height: Constants.chatCloudHeight)
liveViewCanvas.addSubview(yaoChat)

let yaoChatText: UILabel = UILabel(frame: CGRect(x: 450, y: 255, width: 110, height: 80))
yaoChatText.textColor = UIColor.white
yaoChatText.font = UIFont(name: Constants.preferredFont, size: 17)
yaoChatText.text = "Can't wait!"
liveViewCanvas.addSubview(yaoChatText)

let hackersChats: [UIImageView] = [konradChat, blakeChat, yaoChat]
let hackersChatsTexts: [UILabel] = [konradChatText, blakeChatText, yaoChatText]

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

// MARK: Adventure Functions

func sunShine() -> Void {
    UIView.animate(withDuration: 1.5, animations: {
        for ray in sunRays {
            ray.alpha = 0
        }
    }) { (completed) in
        UIView.animate(withDuration: 1.5, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            for ray in sunRays {
                ray.alpha = 1
            }
        }, completion: { (completed) in
            sunShine()
        })
    }
}

func driveHackersToHackathon() -> Void {
    UIView.animate(withDuration: 7.0) {
        teslaImageView.transform = CGAffineTransform(translationX: -720, y: 0)
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
        getHackersOutOfTheCar()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            driveCarAway()
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
           takeHackersToHackathonVenue()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                UIView.animate(withDuration: 2.0, animations: {
                    getHackersTalking()
                })
            })
        })
    }
}

func driveCarAway() -> Void {
    UIView.animate(withDuration: 5.0) {
        teslaImageView.transform = CGAffineTransform(translationX: 500, y: 0)
    }
}

func keepHackersInTheCar() -> Void {
    for hacker in hackers {
        hacker.alpha = 0
    }
}

func getHackersOutOfTheCar() -> Void {
    UIView.animate(withDuration: 4.0) {
        for hacker in hackers {
            hacker.alpha = 1
        }
    }
}

func takeHackersToHackathonVenue() -> Void {
    UIView.animate(withDuration: 3.0) {
        konradMini.transform = CGAffineTransform(translationX: 0, y: -350)
        blakeMini.transform = CGAffineTransform(translationX: 0, y: -300)
        yaoMini.transform = CGAffineTransform(translationX: 0, y: -350)
    }
}

func keepHackersQuite() -> Void {
    for hackerChat in hackersChats {
        hackerChat.alpha = 0
    }
    
    for hackerChatText in hackersChatsTexts {
        hackerChatText.alpha = 0
    }
}

func getHackersTalking() -> Void {
    
    for hackerChat in hackersChats {
        hackerChat.alpha = 1
    }
    
    for hackerChatText in hackersChatsTexts {
        hackerChatText.alpha = 1
    }
}

func tellStory() -> Void {
    let storyTeller: AVSpeechSynthesizer = AVSpeechSynthesizer()
    let storyText: AVSpeechUtterance = AVSpeechUtterance(string: "Each year, around the same period of the year, the WWDC Scholarship contest is announced. This is the time when they gather around their MacBooks, building amazing software to showcase their skill and passion to become the WWDC Scholars")
    
    storyText.rate = AVSpeechUtteranceDefaultSpeechRate;
    storyText.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    guard storyTeller.isSpeaking else {
        storyTeller.speak(storyText)
        return
    }
}

tellStory()
sunShine()
keepHackersInTheCar()
keepHackersQuite()
driveHackersToHackathon()

PlaygroundPage.current.liveView = liveViewCanvas
