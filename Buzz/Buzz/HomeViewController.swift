//
//  HomeViewController.swift
//  Buzz
//
//  Created by Mitch Hamburger on 10/17/16.
//  Copyright © 2016 Mitch Hamburger. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    /*var key: [UIColor] = [RAGE, VIGILANCE, ECSTACY, ADMIRATION, TERROR, AMAZEMENT, GRIEF, ANGER, AGGRESSION,
                          ANTICIPATION, OPTIMISM, JOY, LOVE, TRUST, SUBMISSION, FEAR, AWE, SURPRISE,
                          DISSAPROVAL, SADNESS, REMORSE, DISGUST, CONTEMPT, ANNOYANCE, AGGRESSION2, INTEREST,
                          OPTIMISM2, SERENITY, LOVE2, ACCEPTANCE, SUBMISSION2, APPREHENSION, AWE2,
                          DISTRACTION, DISSAPROVAL2, PENSIVE, REMORSE2, BOREDOM, CONTEMPT2, ANNOYANCE2,
                          AGGRESSION3, INTEREST2, OPTIMISM3, SERENITY2, LOVE3, ACCEPTANCE2, SUBMISSION3,
                          APPREHENSION2, AWE3, DISTRACTION2, DISSAPROVAL3, PENSIVE2, REMORSE3, BOREDOM2,
                          CONTEMPT3]*/
    
    var key = [UIColor]()
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var selector: UIView!
    
    @IBOutlet weak var selector2: UIView!
    
    @IBOutlet weak var spectrum: UIImageView!
    
    var center: CGPoint = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        center = selector.center
        UISetup()
        }
 
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
    }
    
    func UISetup() {
        key = [view.getPixelColorAtPoint(CGPoint(x: 144.5, y: 334.5)), view.getPixelColorAtPoint(CGPoint(x: 154.5, y: 303.5)), view.getPixelColorAtPoint(CGPoint(x: 189.5, y: 197.0)), view.getPixelColorAtPoint(CGPoint(x: 219.5, y: 303.5)), view.getPixelColorAtPoint(CGPoint(x: 224.5, y: 332.0)), view.getPixelColorAtPoint(CGPoint(x: 215.0, y: 362.5)), view.getPixelColorAtPoint(CGPoint(x: 184.0, y: 380.0)), view.getPixelColorAtPoint(CGPoint(x: 159.0, y: 363.5)), view.getPixelColorAtPoint(CGPoint(x: 113.5, y: 329.0)),
                              view.getPixelColorAtPoint(CGPoint(x: 77.5, y: 295.5)),
                              view.getPixelColorAtPoint(CGPoint(x: 131.5, y: 282.5)), view.getPixelColorAtPoint(CGPoint(x: 147.5, y: 235.0)), view.getPixelColorAtPoint(CGPoint(x: 177.5, y: 255.5)), view.getPixelColorAtPoint(CGPoint(x: 224.0, y: 230.5)), view.getPixelColorAtPoint(CGPoint(x: 239.0, y: 274.5)), view.getPixelColorAtPoint(CGPoint(x: 292.5, y: 290.0)), view.getPixelColorAtPoint(CGPoint(x: 266.0, y: 335.5)), view.getPixelColorAtPoint(CGPoint(x: 292.0, y: 373.5)), view.getPixelColorAtPoint(CGPoint(x: 242.5, y: 387.0)),
                              view.getPixelColorAtPoint(CGPoint(x: 229.0, y: 437.5)), view.getPixelColorAtPoint(CGPoint(x: 189.5, y: 414.0)), view.getPixelColorAtPoint(CGPoint(x: 147.0, y: 434.5)), view.getPixelColorAtPoint(CGPoint(x: 135.0, y: 392.0)), view.getPixelColorAtPoint(CGPoint(x: 73.5, y: 384.5)), view.getPixelColorAtPoint(CGPoint(x: 81.0, y: 333.0)), view.getPixelColorAtPoint(CGPoint(x: 78.0, y: 283.0)), view.getPixelColorAtPoint(CGPoint(x: 108.5, y: 261.0)),
                              view.getPixelColorAtPoint(CGPoint(x: 138.5, y: 228.0)), view.getPixelColorAtPoint(CGPoint(x: 181.5, y: 224.5)), view.getPixelColorAtPoint(CGPoint(x: 229.0, y: 229.0)), view.getPixelColorAtPoint(CGPoint(x: 263.0, y: 256.0)), view.getPixelColorAtPoint(CGPoint(x: 292.5, y: 295.0)), view.getPixelColorAtPoint(CGPoint(x: 291.5, y: 328.0)), view.getPixelColorAtPoint(CGPoint(x: 291.5, y: 375.5)),
                              view.getPixelColorAtPoint(CGPoint(x: 265.0, y: 406.5)), view.getPixelColorAtPoint(CGPoint(x: 228.5, y: 445.0)), view.getPixelColorAtPoint(CGPoint(x: 185.5, y: 441.5)), view.getPixelColorAtPoint(CGPoint(x: 146.5, y: 445.0)), view.getPixelColorAtPoint(CGPoint(x: 110.5, y: 409.5)), view.getPixelColorAtPoint(CGPoint(x: 76.0, y: 383.0)), view.getPixelColorAtPoint(CGPoint(x: 76.5, y: 338.5)),
                              view.getPixelColorAtPoint(CGPoint(x: 80.5, y: 296.0)), view.getPixelColorAtPoint(CGPoint(x: 107.0, y: 262.0)), view.getPixelColorAtPoint(CGPoint(x: 138.0, y: 236.0)), view.getPixelColorAtPoint(CGPoint(x: 183.0, y: 226.0)), view.getPixelColorAtPoint(CGPoint(x: 234.5, y: 224.0)), view.getPixelColorAtPoint(CGPoint(x: 263.5, y: 259.0)), view.getPixelColorAtPoint(CGPoint(x: 295.5, y: 287.5)),
                              view.getPixelColorAtPoint(CGPoint(x: 294.5, y: 333.5)), view.getPixelColorAtPoint(CGPoint(x: 294.5, y: 377.5)), view.getPixelColorAtPoint(CGPoint(x: 267.5, y: 413.0)), view.getPixelColorAtPoint(CGPoint(x: 245.0, y: 448.5)), view.getPixelColorAtPoint(CGPoint(x: 187.0, y: 441.5)), view.getPixelColorAtPoint(CGPoint(x: 142.5, y: 443.5)), view.getPixelColorAtPoint(CGPoint(x: 114.0, y: 413.0)),
                              view.getPixelColorAtPoint(CGPoint(x: 72.5, y: 380.0))]
        
        self.view.bringSubviewToFront(selector)
        self.view.bringSubviewToFront(selector2)
        selector.layer.cornerRadius = selector.frame.size.width/2
        selector.clipsToBounds = true
        selector.layer.borderColor = UIColor.whiteColor().CGColor
        selector.layer.borderWidth = 5
        
        selector2.layer.cornerRadius = selector2.frame.size.width/2
        selector2.clipsToBounds = true
        selector2.layer.borderColor = UIColor.whiteColor().CGColor
        selector2.layer.borderWidth = 5
    }
    
    @IBAction func printLocation(sender: UIButton) {
        
        let arr = [UIColor.blueColor(), UIColor.redColor(), UIColor.blueColor()]
        print(arr.indexOf({$0.isEqual(UIColor.blueColor()) && arr.indexOf($0) > 0}))
        print(arr.indexOf({$0.isEqual(UIColor.blueColor())}))
        let a = CGPoint(x: selector.center.x, y: selector.center.y)
        let b = CGPoint(x: selector2.center.x, y: selector2.center.y)
        
        //print(getColor(a))
        //print(comp(a, b: b))
        //print(getColor(a).isEqual(view.getPixelColorAtPoint(CGPoint(x: 131.5, y: 282.5))))
        //print(getColor(a))
        //print(a)
        label.text = "\(comp(a, b: b))"
    }
    
    func comp(a: CGPoint, b: CGPoint) -> Bool {
        switch getLayer(a) {
        case 1:
            print(1)
            if (getColor(a).isEqual(getColor(b))) {
                return true
            }
            return false
        case 2:
            print(2)
            let aColor = getColor(a)
            let i = key.indexOf(aColor)!
            let bColor = getColor(b)
            if (bColor.isEqual(key[i]) || bColor.isEqual(key[i - 1]) || bColor.isEqual(key[i + 1])) {
                return true
            }
            return false
        case 3:
            print(3)
            let aColor = getColor(a)
            //let i = key.indexOf({$0.isEqual(aColor) && key.indexOf($0) > 23})!
            var i: Int
            let indexes = key.indexesOf(aColor)
            if (indexes.count == 3) {
                i = indexes[1]
            }
            else {
                i = indexes[0]
            }
            let bColor = getColor(b)
            if (bColor.isEqual(key[i]) || bColor.isEqual(key[i - 1]) || bColor.isEqual(key[i + 1])) {
                return true
            }
            return false
        default:
            print(4)
            let aColor = getColor(a)
            //let i = key.indexOf({$0.isEqual(aColor) && key.indexOf($0) > 39})!
            var i: Int
            let indexes = key.indexesOf(aColor)
            if (indexes.count == 3) {
                i = indexes[2]
            }
            else {
                i = indexes[0]
            }
            let bColor = getColor(b)
            if (bColor.isEqual(key[i]) || bColor.isEqual(key[i - 1]) || bColor.isEqual(key[i + 1])) {
                return true
            }
            return false
        }
    }
    
    func getColor(point: CGPoint) -> UIColor {
        let newPoint = CGPoint(x: view.center.x - point.x, y: view.center.y - point.y)
        //return (spectrum.image?.getPixelColor(newPoint))!
        //return getPixelColorAtPoint(point)
        return view.getPixelColorAtPoint(point)
    }
    
    func getLayer(point: CGPoint) -> Int {
        let mag = magnitude(view.center.x - point.x, y: view.center.y - point.y)
        if (mag <= (spectrum.frame.width / 2) * 0.384757) {
            return 1
        }
        else if (mag <= (spectrum.frame.width / 2) * 0.5796420) {
            return 2
        }
        else if (mag <=  (spectrum.frame.width / 2) * 0.7700685) {
            return 3
        }
        else {
            return 4
        }
    }
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let point = recognizer.locationInView(self.view)
        if (CGRectContainsPoint(spectrum.frame, point)) {
            let translation = recognizer.translationInView(self.view)
            if let view = recognizer.view {
                view.center = CGPoint(x:view.center.x + translation.x,
                                      y:view.center.y + translation.y)
            }
            recognizer.setTranslation(CGPointZero, inView: self.view)
        }
    }
    
    /*func getPixelColorAtPoint(point:CGPoint) -> UIColor{
        
        let pixel = UnsafeMutablePointer<CUnsignedChar>.alloc(4)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.PremultipliedLast.rawValue)
        let context = CGBitmapContextCreate(pixel, 1, 1, 8, 4, colorSpace, bitmapInfo.rawValue)
        
        CGContextTranslateCTM(context, -point.x, -point.y)
        view.layer.renderInContext(context!)
        let color:UIColor = UIColor(red: CGFloat(pixel[0])/255.0, green: CGFloat(pixel[1])/255.0, blue: CGFloat(pixel[2])/255.0, alpha: CGFloat(pixel[3])/255.0)
        
        pixel.dealloc(4)
        return color
    }*/
}
