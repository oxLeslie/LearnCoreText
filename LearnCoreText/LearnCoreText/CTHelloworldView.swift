//
//  CTHellowordView.swift
//  LearnCoreText
//
//  Created by Ama on 11/8/16.
//  Copyright © 2016 Ama. All rights reserved.
//

import UIKit
import CoreText

class CTHelloworldView: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // 获取当前上下文
        let context = UIGraphicsGetCurrentContext()
        
        // 将坐标系上下翻转，对于底层绘制引擎来说，屏幕的左下角为原点坐标
        context?.textMatrix = CGAffineTransform.identity
        context!.translateBy(x: 0, y: bounds.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        
        // 创建绘制区域
//        let path = CGMutablePath()
//        path.addEllipseInRect(bounds)
//        
//        let attrString = NSAttributedString(string: "Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!")
//        let framesetter = CTFramesetterCreateWithAttributedString(attrString)
//        let frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, attrString.length), path, nil)
        
        let path1 = UIBezierPath(roundedRect: self.bounds, cornerRadius:self.bounds.size.width/2 )
        
        let attrString = "Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!Hello world!"
        
        let mutableAttrStr = NSMutableAttributedString(string: attrString)
        mutableAttrStr.addAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 20),
                                      NSForegroundColorAttributeName:UIColor.red ], range: NSMakeRange(0, 20))
        mutableAttrStr.addAttributes([NSFontAttributeName:UIFont.systemFont(ofSize: 13),NSUnderlineStyleAttributeName: 1 ], range: NSMakeRange(20,18))
        let framesetter = CTFramesetterCreateWithAttributedString(mutableAttrStr)
        let frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, mutableAttrStr.length), path1.cgPath, nil)
        
        CTFrameDraw(frame,context!)
    }

}
