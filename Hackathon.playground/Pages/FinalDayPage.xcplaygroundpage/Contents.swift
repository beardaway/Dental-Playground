import UIKit
import PlaygroundSupport
import AVFoundation

//: [Previous page 🤓](@previous)
/*:
 
 # Hackathon itself - PART III
 
 ## The last day
 
 So you came here on the first day, got an idea, gathered your team and started coding. On the second day you continued programming, carried out some design sessions, had numerous brainstorms. Maybe you even attended some workshops 👨‍🏫👩‍🏫 This is the last day when you have to put in extra effort cause in a short amount of time you will be pitching your solution in front of all the hackers and jury. Scared? 😱
 
 ## What to do?
 
 Firstly, don't worry 🙂 I will provide you with some steps you may follow:
 
 * Everyone on your team may be tired so do prevent conflicts
 * Do not waste time for converstaions that will not bring any added value to your project
 * Stay focused on the code, design and user experience!
 * Prepare a solid deck along with the demo. Do not skip it till the end!
 * Calm down and rock the stage 🤟🏼
 
 ## Winners announcement

 You know this feeling after whatever exam or job interview. In case of waiting for hackathon results it looks the same. You know that you put your heart in coding and designing the software you planned to build at the beginning. All hackers did 💪 You did your best, now is the time to calm down and wait for final announcements 😬
 */
//: [Next page 🤓](@next)

// MARK: Constants

struct Constants {
    static let canvasWidth: Int = 1024
    static let canvasHeight: Int = 892
    static let prefferedFont: String = "Avenir-Heavy"
    static let resultsAnnouncementDate: String = "04/20/2018 08:00:00 a"
    static let hackersHeight: Int = 330
    static let hackersWidth: Int = 250
    static let hackersVerticalCoordinate: Int = 330
    static let sweat: String = "Sweat"
    static let sweatWidth: Int = 15
    static let sweatHeight: Int = 25
}

let requestedComponents: Set<Calendar.Component> = [
    Calendar.Component.month,
    Calendar.Component.day,
    Calendar.Component.hour,
    Calendar.Component.minute,
    Calendar.Component.second
]

let dateFormatter: DateFormatter = DateFormatter()
let userCalendar = Calendar.current

// MARK: Adventure Canvas

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: Constants.canvasHeight))
liveViewCanvas.backgroundColor = UIColor(red: 0.73, green: 0.44, blue: 0.44, alpha:1.0)

let sceneLabel: UILabel = UILabel(frame: CGRect(x: 60, y: 70, width: 800, height: 50))
sceneLabel.text = "Hackathon winners announcement"
sceneLabel.textColor = UIColor.white
sceneLabel.font = UIFont(name: Constants.prefferedFont, size: 40)
liveViewCanvas.addSubview(sceneLabel)

let timerImageView: UIImageView = UIImageView(image: UIImage(named: "Timer"))
timerImageView.frame = CGRect(x: 50, y: 150, width: 660, height: 110)
liveViewCanvas.addSubview(timerImageView)

let timerLabel: UILabel = UILabel(frame: CGRect(x: 130, y: 180, width: 550, height: 50))
timerLabel.textColor = UIColor(red: 0.49, green: 0.83, blue: 0.13, alpha:1.0)
timerLabel.font = UIFont(name: Constants.prefferedFont, size: 35)
liveViewCanvas.addSubview(timerLabel)

let konradImageView: UIImageView = UIImageView(image: UIImage(named: "Konrad"))
konradImageView.frame = CGRect(x: 15, y: Constants.hackersVerticalCoordinate, width: Constants.hackersWidth, height: Constants.hackersHeight)
liveViewCanvas.addSubview(konradImageView)

let konradSweatImageView: UIImageView = UIImageView(image: UIImage(named: Constants.sweat))
konradSweatImageView.frame = CGRect(x: 130, y: 375, width: Constants.sweatWidth, height: Constants.sweatHeight)
liveViewCanvas.addSubview(konradSweatImageView)

let blakeImageView: UIImageView = UIImageView(image: UIImage(named: "Blake"))
blakeImageView.frame = CGRect(x: 260, y: Constants.hackersVerticalCoordinate, width: Constants.hackersWidth, height: Constants.hackersHeight)
liveViewCanvas.addSubview(blakeImageView)

let blakeSweatImageViewOne: UIImageView = UIImageView(image: UIImage(named: Constants.sweat
))
blakeSweatImageViewOne.frame = CGRect(x: 367, y: 335, width: Constants.sweatWidth, height: Constants.sweatHeight)
liveViewCanvas.addSubview(blakeSweatImageViewOne)

let blakeSweatImageViewTwo: UIImageView = UIImageView(image: UIImage(named: Constants.sweat))
blakeSweatImageViewTwo.frame = CGRect(x: 385, y: 340, width: Constants.sweatWidth, height: Constants.sweatHeight)
liveViewCanvas.addSubview(blakeSweatImageViewTwo)

let yaoImageView: UIImageView = UIImageView(image: UIImage(named: "Yao"))
yaoImageView.frame = CGRect(x: 502, y: Constants.hackersVerticalCoordinate, width: Constants.hackersWidth, height: Constants.hackersHeight)
liveViewCanvas.addSubview(yaoImageView)

let yaoSweatImageView: UIImageView = UIImageView(image: UIImage(named: Constants.sweat))
yaoSweatImageView.frame = CGRect(x: 600, y: 375, width: Constants.sweatWidth, height: Constants.sweatHeight)
liveViewCanvas.addSubview(yaoSweatImageView)

let sweatImages: [UIImageView] = [konradSweatImageView, blakeSweatImageViewOne, blakeSweatImageViewTwo, yaoSweatImageView]

// MARK: Adventure Functions

func calculateTime(dateFormat: String, endTime: String, startTime: Date = Date()) -> DateComponents {
    dateFormatter.dateFormat = dateFormat
    let _startTime = startTime
    let _endTime = dateFormatter.date(from: endTime)
    
    let calculateDifference = userCalendar.dateComponents(requestedComponents, from: _startTime, to: _endTime!)
    
    return calculateDifference
}

func displayTime() -> Void {
    let time = calculateTime(dateFormat: "MM/dd/yyyy hh:mm:ss a", endTime: Constants.resultsAnnouncementDate)
    timerLabel.text = "\(time.day!) Days \(time.hour!) Hours \(time.minute!) Min \(time.second!) Sec "
}

func tellStory() -> Void {
    let storyTeller: AVSpeechSynthesizer = AVSpeechSynthesizer()
    let storyText: AVSpeechUtterance = AVSpeechUtterance(string: "Finally, after co-operating and helping each other for one week, they had to submit their robust playgrounds. Feling anxious and nervous about the results, they started looking into uncertain future")
    
    storyText.rate = AVSpeechUtteranceDefaultSpeechRate;
    storyText.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    guard storyTeller.isSpeaking else {
        storyTeller.speak(storyText)
        return
    }
}

func keepSweatInvisible() -> Void {
    for sweatImage in sweatImages {
        sweatImage.alpha = 0
    }
}

func letSweatOut() -> Void {
    for sweatImage in sweatImages {
        sweatImage.alpha = 1
    }
}

func showGuysAnxiety() -> Void {
    UIView.animate(withDuration: 11.0) {
        letSweatOut()
        konradSweatImageView.transform = CGAffineTransform(translationX: 0.0, y: 30)
        blakeSweatImageViewOne.transform = CGAffineTransform(translationX: 0.0, y: 35)
        blakeSweatImageViewTwo.transform = CGAffineTransform(translationX: 0.0, y: 35)
        yaoSweatImageView.transform = CGAffineTransform(translationX: 0.0, y: 30)
    }
}

let countDownTimer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (ticking) in
    displayTime()
}

countDownTimer.fire()
tellStory()
keepSweatInvisible()
showGuysAnxiety()

PlaygroundPage.current.liveView = liveViewCanvas
