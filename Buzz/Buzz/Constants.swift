//
//  Constants.swift
//  Buzz
//
//  Created by Mitch Hamburger on 10/18/16.
//  Copyright © 2016 Mitch Hamburger. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = startIndex.advancedBy(r.startIndex)
        let end = start.advancedBy(r.endIndex - r.startIndex)
        return self[Range(start ..< end)]
    }
}

func distance(x1: CGFloat,  y1: CGFloat, x2: CGFloat, y2: CGFloat) -> CGFloat {
    return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
}

func magnitude(x: CGFloat, y: CGFloat) -> CGFloat {
    return sqrt(x * x + y * y)
}

extension UIImage {
    func getPixelColor(pos: CGPoint) -> UIColor {
        
        let pixelData = CGDataProviderCopyData(CGImageGetDataProvider(self.CGImage))
        let data: UnsafePointer<UInt8> = CFDataGetBytePtr(pixelData)
        
        let pixelInfo: Int = ((Int(self.size.width) * Int(pos.y)) + Int(pos.x)) * 4
        
        let r = CGFloat(data[pixelInfo]) / CGFloat(255.0)
        let g = CGFloat(data[pixelInfo+1]) / CGFloat(255.0)
        let b = CGFloat(data[pixelInfo+2]) / CGFloat(255.0)
        let a = CGFloat(data[pixelInfo+3]) / CGFloat(255.0)
        //print("red: \(r) green: \(g) blue: \(b)")
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }  
}

extension UIColor {
    var coreImageColor: CoreImage.CIColor {
        return CoreImage.CIColor(color: self)
    }
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let color = coreImageColor
        return (color.red, color.green, color.blue, color.alpha)
    }
}

extension UIView {
    func getPixelColorAtPoint(point:CGPoint) -> UIColor{
        
        let pixel = UnsafeMutablePointer<CUnsignedChar>.alloc(4)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.PremultipliedLast.rawValue)
        let context = CGBitmapContextCreate(pixel, 1, 1, 8, 4, colorSpace, bitmapInfo.rawValue)
        
        CGContextTranslateCTM(context, -point.x, -point.y)
        self.layer.renderInContext(context!)
        let color:UIColor = UIColor(red: CGFloat(pixel[0])/255.0, green: CGFloat(pixel[1])/255.0, blue: CGFloat(pixel[2])/255.0, alpha: CGFloat(pixel[3])/255.0)
        
        pixel.dealloc(4)
        return color
    }
}

extension Array where Element: Equatable {
    func secondIndexOf(element: Element) -> Int? {
        guard let index = indexOf(element) else { return nil }
        return suffixFrom(index.successor()).indexOf(element)
    }
    func indexesOf(element: Element) -> [Int] {
        guard let index = indexOf(element) else { return [] }
        var indexes = [index]
        while let lastIndexSucessor = indexes.last?.successor(),
            newIndex = suffixFrom(lastIndexSucessor).indexOf(element)  {
                indexes.append(newIndex)
        }
        return indexes
    }
}


