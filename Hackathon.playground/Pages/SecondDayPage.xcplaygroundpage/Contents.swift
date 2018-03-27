import Foundation
import UIKit
import AVFoundation
import PlaygroundSupport

//: [Previous page 🤓](@previous)
/*:
 # Hackathon itself - PART II
 
 ## What is obvious?
 
For someone who attended numerous hackathons in their life, it is clear that the only two things that are certain both at hackathons and in software development, are bugs and time when you have to fix them 👩‍🔧👨‍🔧
 
 ## What is important?
 
 The important thing is that whenever you will face any bugs, you can ask for help. To be honest anyone! All hackathons gather people of different skillsets and experiences. So pick your communication channel and ask for help 🎤 There will be for sure a bunch of guys who will be more than willing to help you with the stuff that causes your nightmares 🛠🙀
 
 ## What is so fantastic about hackathons?
 
The best thing about hackathons and IT in general is that software development connects people across languages, timezones, places all over the world and cultures. We really do not pay attention to any of those things, cause we treat everyone with great respect. To build a trustworthy developer communities you have to give a helping hand to those who need it cause at some point, you may be the one who will be in the need 👳‍♀️
 */
//: [Next page 🤓](@next)

struct Constants {
    static let canvasHeight: Int = 892
    static let canvasWidth: Int = 1024
    static let starWidth: Int = 30
    static let starHeight: Int = 30
    static let sunRayWidth: Int = 30
    static let birdWidth: Int = 50
    static let birdHeight: Int = 20
    static let imacY: Int = 275
    static let imacWidth: Int = 220
    static let imacHeight: Int = 180
    static let confettiShapeWidth: Int = 20
    static let confettiShapeHeight: Int = 20
    static let codeFont: String = "Avenir-Heavy"
    static let codeFontSize: CGFloat = 16
    static let hackerY: Int = 435
    static let hackerWidth: Int = 200
    static let hackerHeight: Int = 260
    static let pillowY: Int = 570
    static let pillowWidth: Int = 180
    static let pillowHeight: Int = 180
    static let keyboardY: Int = 460
    static let keyboardWidth: Int = 200
    static let keyboardHeight: Int = 30
    static let chipsY: Int = 370
    static let chipsWidth: Int = 70
    static let chipsHeight: Int = 100
    static let sparklingWaterY: Int = 385
    static let sparklingWaterWidth: Int = 30
    static let sparklingWaterHeight: Int = 90
}

let liveViewCanvas: UIView = UIView(frame: CGRect(x: 0, y: 0, width: Constants.canvasWidth, height: Constants.canvasHeight))
liveViewCanvas.backgroundColor = UIColor(red: 0.00, green: 0.67, blue: 0.54, alpha: 1.0)

let windowImageView: UIImageView = UIImageView(image: UIImage(named: "Window"))
windowImageView.frame = CGRect(x: 10, y: 40, width: 745, height: 170)
liveViewCanvas.addSubview(windowImageView)

let nightModeWindow: UIImageView = UIImageView(image: UIImage(named: "WindowBackground"))
nightModeWindow.frame = CGRect(x: 31, y: 54, width: 705, height: 140)
liveViewCanvas.addSubview(nightModeWindow)

let appleMoon: UIImageView = UIImageView(image: UIImage(named: "AppleMoon"))
appleMoon.frame = CGRect(x: 45, y: 65, width: 55, height: 55)
liveViewCanvas.addSubview(appleMoon)

let starOne: UIImageView = UIImageView(image: UIImage(named: "Star"))
starOne.frame = CGRect(x: 120, y: 85, width: Constants.starWidth, height: Constants.starHeight)
liveViewCanvas.addSubview(starOne)

let starTwo: UIImageView = UIImageView(image: UIImage(named: "Star"))
starTwo.frame = CGRect(x: 160, y: 65, width: Constants.starWidth, height: Constants.starHeight)
liveViewCanvas.addSubview(starTwo)

let starThree: UIImageView = UIImageView(image: UIImage(named: "Star"))
starThree.frame = CGRect(x: 190, y: 90, width: Constants.starWidth, height: Constants.starHeight)
liveViewCanvas.addSubview(starThree)

let starFour: UIImageView = UIImageView(image: UIImage(named: "Star"))
starFour.frame = CGRect(x: 155, y: 110, width: Constants.starWidth, height: Constants.starHeight)
liveViewCanvas.addSubview(starFour)

let nightModeElements: [UIImageView] = [nightModeWindow, appleMoon, starOne, starTwo, starThree, starFour]

let sun: UIImageView = UIImageView(image: UIImage(named: "Sun"))
sun.frame = CGRect(x: 670, y: 65, width: 60, height: 60)
liveViewCanvas.addSubview(sun)

let sunRayOne: UIImageView = UIImageView(image: UIImage(named: "RayOne"))
sunRayOne.frame = CGRect(x: 635, y: 75, width: Constants.sunRayWidth, height: 15)
liveViewCanvas.addSubview(sunRayOne)

let sunRayTwo: UIImageView = UIImageView(image: UIImage(named: "RayTwo"))
sunRayTwo.frame = CGRect(x: 635, y: 100, width: Constants.sunRayWidth, height: 40)
liveViewCanvas.addSubview(sunRayTwo)

let sunRayThree: UIImageView = UIImageView(image: UIImage(named: "RayFour"))
sunRayThree.frame = CGRect(x: 660, y: 125, width: Constants.sunRayWidth, height: 40)
liveViewCanvas.addSubview(sunRayThree)

let sunRays: [UIImageView] = [sunRayOne, sunRayTwo, sunRayThree]

let cow: UIImageView = UIImageView(image: UIImage(named: "Cow"))
cow.frame = CGRect(x: 350, y: 140, width: 70, height: 40)
liveViewCanvas.addSubview(cow)

let birdOne: UIImageView = UIImageView(image: UIImage(named: "DarkBird"))
birdOne.frame = CGRect(x: 150, y: 80, width: Constants.birdWidth, height: Constants.birdHeight)
liveViewCanvas.addSubview(birdOne)

let birdTwo: UIImageView = UIImageView(image: UIImage(named: "DarkBird"))
birdTwo.frame = CGRect(x: 80, y: 130, width: Constants.birdWidth, height: Constants.birdHeight)
liveViewCanvas.addSubview(birdTwo)

let birdThree: UIImageView = UIImageView(image: UIImage(named: "DarkBird"))
birdThree.frame = CGRect(x: 500, y: 110, width: Constants.birdWidth, height: Constants.birdHeight)
liveViewCanvas.addSubview(birdThree)

let ufo: UIImageView = UIImageView(image: UIImage(named: "Ufo"))
ufo.frame = CGRect(x: -70, y: 60, width: 70, height: 40)
liveViewCanvas.addSubview(ufo)

let ufoScanner: UIImageView = UIImageView(image: UIImage(named: "UfoRay"))
ufoScanner.frame = CGRect(x: 370, y: 95, width: 30, height: 20)
ufoScanner.alpha = 0
liveViewCanvas.addSubview(ufoScanner)

let grassImageView: UIImageView = UIImageView(image: UIImage(named: "Grass"))
grassImageView.frame = CGRect(x: 33, y: 165, width: 700, height: 30)
liveViewCanvas.addSubview(grassImageView)

let dayModeObjects: [UIImageView] = [sun, sunRayOne, sunRayTwo, sunRayThree, birdOne, birdTwo, birdThree, cow, ufo, ufoScanner]

let deskView: UIView = UIView(frame: CGRect(x: 0, y: 450, width: Constants.canvasWidth, height: 50))
deskView.backgroundColor = UIColor(red: 0.25, green: 0.25, blue: 0.25, alpha: 1.0)
liveViewCanvas.addSubview(deskView)

let iMacOne: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacOne.frame = CGRect(x: 10, y: Constants.imacY, width: Constants.imacWidth, height: Constants.imacHeight)
liveViewCanvas.addSubview(iMacOne)

let konradCode: UILabel = UILabel(frame: CGRect(x: 25, y: 325, width: 80, height: 30))
konradCode.textColor = UIColor.black
konradCode.font = UIFont(name: Constants.codeFont, size: Constants.codeFontSize)
konradCode.text = "add(2,2)"
liveViewCanvas.addSubview(konradCode)

let konradCodeResult: UILabel = UILabel(frame: CGRect(x: 100, y: 325, width: 80, height: 30))
konradCodeResult.textColor = UIColor.black
konradCodeResult.font = UIFont(name: Constants.codeFont, size: 25)
konradCodeResult.text = "4"

let iMacTwo: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacTwo.frame = CGRect(x: 275, y: Constants.imacY, width: Constants.imacWidth, height: Constants.imacHeight)
liveViewCanvas.addSubview(iMacTwo)

let confettiShapeOne: UIImageView = UIImageView(image: UIImage(named: "ShapeOne"))
confettiShapeOne.frame = CGRect(x: 400, y: 325, width: Constants.confettiShapeWidth, height: Constants.confettiShapeHeight)
liveViewCanvas.addSubview(confettiShapeOne)

let confettiShapeTwo: UIImageView = UIImageView(image: UIImage(named: "ShapeTwo"))
confettiShapeTwo.frame = CGRect(x: 435, y: 305, width: Constants.confettiShapeWidth, height: Constants.confettiShapeHeight)
liveViewCanvas.addSubview(confettiShapeTwo)

let confettiShapeThree: UIImageView = UIImageView(image: UIImage(named: "ShapeThree"))
confettiShapeThree.frame = CGRect(x: 460, y: 320, width: Constants.confettiShapeWidth, height: Constants.confettiShapeHeight)
liveViewCanvas.addSubview(confettiShapeThree)

let confettiShapeFour: UIImageView = UIImageView(image: UIImage(named: "ShapeFour"))
confettiShapeFour.frame = CGRect(x: 425, y: 340, width: Constants.confettiShapeWidth, height: Constants.confettiShapeHeight)
liveViewCanvas.addSubview(confettiShapeFour)

let confettiShapes: [UIImageView] = [confettiShapeOne, confettiShapeTwo, confettiShapeThree, confettiShapeFour]

let blakeCode: UILabel = UILabel(frame: CGRect(x: 285, y: 325, width: 120, height: 30))
blakeCode.textColor = UIColor.black
blakeCode.font = UIFont(name: Constants.codeFont, size: Constants.codeFontSize)
blakeCode.text = "confetti()"
liveViewCanvas.addSubview(blakeCode)

let iMacThree: UIImageView = UIImageView(image: UIImage(named: "ImacWithPlaygrounds"))
iMacThree.frame = CGRect(x: 535, y: Constants.imacY, width: Constants.imacWidth, height: Constants.imacHeight)
liveViewCanvas.addSubview(iMacThree)

let yaoCode: UILabel = UILabel(frame: CGRect(x: 545, y: 325, width: 120, height: 30))
yaoCode.textColor = UIColor.black
yaoCode.font = UIFont(name: Constants.codeFont, size: Constants.codeFontSize)
yaoCode.text = "drawZ()"
liveViewCanvas.addSubview(yaoCode)

let hackersCode: [UILabel] = [konradCode, blakeCode, yaoCode]

let yaoCodeResult: UIImageView = UIImageView(image: UIImage(named: "Circle"))
yaoCodeResult.frame = CGRect(x: 650, y: 300, width: 30, height: 30)
yaoCodeResult.alpha = 0
liveViewCanvas.addSubview(yaoCodeResult)

let chipsOne: UIImageView = UIImageView(image: UIImage(named: "Chips"))
chipsOne.frame = CGRect(x: 180, y: Constants.chipsY, width: Constants.chipsWidth, height: Constants.chipsHeight)
liveViewCanvas.addSubview(chipsOne)

let chipsTwo: UIImageView = UIImageView(image: UIImage(named: "Chips"))
chipsTwo.frame = CGRect(x: 435, y: Constants.chipsY, width: Constants.chipsWidth, height: Constants.chipsHeight)
liveViewCanvas.addSubview(chipsTwo)

let chips: [UIImageView] = [chipsOne, chipsTwo]

let sparklingWaterOne: UIImageView = UIImageView(image: UIImage(named: "SparklingWater"))
sparklingWaterOne.frame = CGRect(x: 245, y: Constants.sparklingWaterY, width: Constants.sparklingWaterWidth, height: Constants.sparklingWaterHeight)
liveViewCanvas.addSubview(sparklingWaterOne)

let sparklingWaterTwo: UIImageView = UIImageView(image: UIImage(named: "SparklingWater"))
sparklingWaterTwo.frame = CGRect(x: 505, y: Constants.sparklingWaterY, width: Constants.sparklingWaterWidth, height: Constants.sparklingWaterHeight)
liveViewCanvas.addSubview(sparklingWaterTwo)

let drinks: [UIImageView] = [sparklingWaterOne, sparklingWaterTwo]

let keyboardOne: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardOne.frame = CGRect(x: 15, y: Constants.keyboardY, width: Constants.keyboardWidth, height: Constants.keyboardHeight)
liveViewCanvas.addSubview(keyboardOne)

let keyboardTwo: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardTwo.frame = CGRect(x: 285, y: Constants.keyboardY, width: Constants.keyboardWidth, height: Constants.keyboardHeight)
liveViewCanvas.addSubview(keyboardTwo)

let mouse: UIImageView = UIImageView(image: UIImage(named: "Mouse"))
mouse.frame = CGRect(x: 490, y: 462, width: 20, height: 30)
liveViewCanvas.addSubview(mouse)

let keyboardThree: UIImageView = UIImageView(image: UIImage(named: "Keyboard"))
keyboardThree.frame = CGRect(x: 545, y: Constants.keyboardY, width: Constants.keyboardWidth, height: Constants.keyboardHeight)
liveViewCanvas.addSubview(keyboardThree)

let konradPillow: UIImageView = UIImageView(image: UIImage(named: "RedPillow"))
konradPillow.frame = CGRect(x: 25, y: Constants.pillowY, width: Constants.pillowWidth, height: Constants.pillowHeight)
liveViewCanvas.addSubview(konradPillow)

let konrad: UIImageView = UIImageView(image: UIImage(named: "KonradBack"))
konrad.frame = CGRect(x: 15, y: Constants.hackerY, width: Constants.hackerWidth, height: Constants.hackerHeight)
liveViewCanvas.addSubview(konrad)

let blakePillow: UIImageView = UIImageView(image: UIImage(named: "BluePillow"))
blakePillow.frame = CGRect(x: 300, y: Constants.pillowY, width: Constants.pillowWidth, height: Constants.pillowHeight)
liveViewCanvas.addSubview(blakePillow)

let blake: UIImageView = UIImageView(image: UIImage(named: "BlakeBack"))
blake.frame = CGRect(x: 290, y: Constants.hackerY, width: Constants.hackerWidth, height: Constants.hackerHeight)
liveViewCanvas.addSubview(blake)

let yaoPillow: UIImageView = UIImageView(image: UIImage(named: "YellowPillow"))
yaoPillow.frame = CGRect(x: 565, y: Constants.pillowY, width: Constants.pillowWidth, height: Constants.pillowHeight)
liveViewCanvas.addSubview(yaoPillow)

let yao: UIImageView = UIImageView(image: UIImage(named: "YaoBack"))
yao.frame = CGRect(x: 550, y: Constants.hackerY, width: Constants.hackerWidth, height: Constants.hackerHeight)
liveViewCanvas.addSubview(yao)

func makeSunRaysVisible() -> Void {
    for sunRay in sunRays {
        sunRay.alpha = 1
    }
}

func makeSunRaysInvisible() -> Void {
    for sunRay in sunRays {
        sunRay.alpha = 0
    }
}

func makeNightModeElementsInvisible() -> Void {
    for nightModeElement in nightModeElements {
        nightModeElement.alpha = 0
    }
}

func makeDayModeObjectsInvisible() -> Void {
    for dayObject in dayModeObjects {
        dayObject.alpha = 0
    }
}

func makeNightModeVisible() -> Void {
    DispatchQueue.main.asyncAfter(deadline: .now() + 20) {
        
        UIView.animate(withDuration: 3.0, animations: {
            makeDayModeObjectsInvisible()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                for dayObject in dayModeObjects {
                    dayObject.removeFromSuperview()
                }
            })
            
            for nightModeElement in nightModeElements {
                nightModeElement.alpha = 1
            }
        })
    }
}

func makeBirdsFly() -> Void {
    UIView.animate(withDuration: 2.0, animations: {
        birdOne.transform = CGAffineTransform(translationX: 15, y: 0)
        birdTwo.transform = CGAffineTransform(translationX: 0, y: 15)
        birdThree.transform = CGAffineTransform(translationX: 15, y: 0)
    }) { (completed) in
        UIView.animate(withDuration: 2.0, delay: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            birdOne.transform = CGAffineTransform(translationX: -15, y: 0)
            birdTwo.transform = CGAffineTransform(translationX: 0, y: -15)
            birdThree.transform = CGAffineTransform(translationX: -15, y: 0)
        }, completion: { (completed) in
            makeBirdsFly()
        })
    }
}

func sunShine() -> Void {
    UIView.animate(withDuration: 3.0, animations: {
        makeSunRaysInvisible()
    }) { (completed) in
        UIView.animate(withDuration: 3.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            makeSunRaysVisible()
        }, completion: { (completed) in
            sunShine()
        })
    }
}

func stealCow() -> Void {
    UIView.animate(withDuration: 2.0, animations: {
        cow.transform = CGAffineTransform(translationX: 0, y: -20)
    }) { (completed) in
        UIView.animate(withDuration: 2.0, delay: 0.5, options: UIViewAnimationOptions.curveEaseOut, animations: {
            cow.transform = CGAffineTransform(translationX: 0, y: 3)
        }, completion: { (completed) in
            stealCow()
        })
    }
}

func flyUfo() -> Void {
    UIView.animate(withDuration: 7.0) {
        ufo.transform = CGAffineTransform(translationX: 420, y: 0)
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
        UIView.animate(withDuration: 2.5, animations: {
            ufoScanner.alpha = 1
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                stealCow()
            })
        })
    }
}

func eatChips() -> Void {
        UIView.animate(withDuration: 2.5, animations: {
            chips[0].transform = CGAffineTransform(rotationAngle: 90)
            chips[1].transform = CGAffineTransform(rotationAngle: -90)
            drinks[0].transform = CGAffineTransform(rotationAngle: -90)
            drinks[1].transform = CGAffineTransform(rotationAngle: 90)
        })
}

func makeConfettiViewInvisible() -> Void {
    for confettiShape in confettiShapes {
        confettiShape.alpha = 0
    }
}

func makeConfettiViewVisible() -> Void {
    for confettiShape in confettiShapes {
        confettiShape.alpha = 1
    }
}

func makeHackerCodeBigger(hackerCode: UILabel) -> Void {
    var biggerCodeBounds = hackerCode.bounds
    biggerCodeBounds.size = hackerCode.intrinsicContentSize
    
    hackerCode.transform = CGAffineTransform(scaleX: 1/2, y: 1/2)
    
    UIView.animate(withDuration: 2.0) {
        hackerCode.transform = .identity
    }
}

func makeHackersCodeInvisible() {
    for hackerCode in hackersCode {
        hackerCode.alpha = 0
    }
}

func makeHackerCodeVisible(hackerCode: UILabel) -> Void {
    UIView.animate(withDuration: 1.5) {
        hackerCode.alpha = 1
    }
}

func runKonradCode() -> Void {
    makeHackerCodeBigger(hackerCode: konradCode)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
        liveViewCanvas.addSubview(konradCodeResult)
        
        UIView.animate(withDuration: 2.5, delay: 0.0, options: .curveLinear, animations: {
            konradCodeResult.transform = konradCodeResult.transform.rotated(by: CGFloat(Double.pi))
        })
    }
}

func runBlakeCode() -> Void {
    makeHackerCodeBigger(hackerCode: blakeCode)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        UIView.animate(withDuration: 2.0, animations: {
            makeConfettiViewVisible()
        })
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            UIView.animate(withDuration: 3.0, animations: {
                for confettiShape in confettiShapes {
                    confettiShape.transform = CGAffineTransform(rotationAngle: CGFloat(20))
                    confettiShape.transform = CGAffineTransform(translationX: 0, y: 15)
                }
            })
        })
    }
}

func runYaoCode() -> Void {
    makeHackerCodeBigger(hackerCode: yaoCode)
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        UIView.animate(withDuration: 3.0, animations: {
            yaoCodeResult.alpha = 1
        })
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
        UIView.animate(withDuration: 1.5, animations: {
            yaoCodeResult.transform = CGAffineTransform(translationX: 50, y: 0)
        }, completion: { (completed) in
            UIView.animate(withDuration: 1.5, animations: {
                yaoCodeResult.transform = CGAffineTransform(translationX: 0, y: 50)
            }, completion: { (completed) in
                UIView.animate(withDuration: 1.5, animations: {
                    yaoCodeResult.transform = CGAffineTransform(translationX: 50, y: 50)
                })
            })
        })
    }
}

func runHackersCode() -> Void {
    DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
        makeHackerCodeVisible(hackerCode: konradCode)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            runKonradCode()
        })
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
        eatChips()
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 17) {
        makeHackerCodeVisible(hackerCode: blakeCode)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            runBlakeCode()
        })
    }
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 21) {
        makeHackerCodeVisible(hackerCode: yaoCode)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            runYaoCode()
        })
    }
}

func tellStory() -> Void {
    let storyTeller: AVSpeechSynthesizer = AVSpeechSynthesizer()
    let storyText: AVSpeechUtterance = AVSpeechUtterance(string: "Once they start building their software ideas, they go a long way till they create what they initially desired. In the meantime thery may come bugs, necessity to learn new APIs and SDKs and so on. Truth to be told, they do not have to worry about any of those things as they belong to the iOS community. They can ask for help and will be provided with asistance any time they ask. It doesn't matter they take part in the same hackathon because they can count on each other's help")
    
    storyText.rate = AVSpeechUtteranceDefaultSpeechRate;
    storyText.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    guard storyTeller.isSpeaking else {
        storyTeller.speak(storyText)
        return
    }
}

makeHackersCodeInvisible()
makeConfettiViewInvisible()
runHackersCode()
makeNightModeElementsInvisible()
makeBirdsFly()
sunShine()
flyUfo()
makeNightModeVisible()
tellStory()

PlaygroundPage.current.liveView = liveViewCanvas
