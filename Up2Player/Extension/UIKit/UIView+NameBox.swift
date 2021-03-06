//
//  UIView+BSExt.swift
//  10000ui-swift
//
//  Created by 张亚东 on 16/4/25.
//  Copyright © 2016年 blurryssky. All rights reserved.
//

import UIKit

extension Up2Player where T: UIView {
    
    var origin: CGPoint {
        set {
            base.frame = CGRect(origin: newValue, size: base.frame.size)
        }
        get {
            return base.frame.origin
        }
    }
    
    var size: CGSize {
        set {
            base.frame = CGRect(origin: base.frame.origin, size: newValue)
        }
        get {
            return base.frame.size
        }
    }
    
    var x: CGFloat {
        set {
            base.frame = CGRect(origin: CGPoint(x: newValue, y: base.frame.origin.y), size: base.frame.size)
        }
        get {
            return base.frame.origin.x
        }
    }
    
    var y: CGFloat {
        set {
            base.frame = CGRect(origin: CGPoint(x: base.frame.origin.x, y: newValue), size: base.frame.size)
        }
        get {
            return base.frame.origin.y
        }
    }
    
    var centerX: CGFloat {
        set {
            base.center = CGPoint(x: newValue, y: centerY)
        }
        get {
            return base.center.x
        }
    }
    
    var centerY: CGFloat {
        set {
            base.center = CGPoint(x: centerX, y: newValue)
        }
        get {
            return base.center.y
        }
    }
    
    var width: CGFloat {
        set {
            base.frame = CGRect(origin: base.frame.origin, size: CGSize(width: newValue, height: base.frame.size.height))
        }
        get {
            return base.frame.size.width
        }
    }
    
    var height: CGFloat {
        set {
            base.frame = CGRect(origin: base.frame.origin, size: CGSize(width: base.frame.size.width, height: newValue))
        }
        get {
            return base.frame.size.height
        }
    }
    
    var bottom: CGFloat{
        get{
            return base.frame.origin.y + base.frame.size.height
        }
        set(newValue) {
            let y = newValue - base.frame.size.height
            base.frame = CGRect(x: base.frame.origin.x, y: y, width: base.frame.size.width, height: base.frame.size.height)
        }
    }
    
    var right: CGFloat {
        get{
            return base.frame.origin.x + base.frame.size.width
        }
        set(newValue) {
            let x = newValue - base.frame.size.width
            base.frame = CGRect(x: x, y: base.frame.origin.y, width: base.frame.size.width, height: base.frame.size.height)
        }
    }
    
}

extension Up2Player where T: UIView {
    
    static var instantiateFromNib: T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)?.first as! T
    }
}

extension Up2Player where T: UIView {
    
    static func animate(duration: TimeInterval = 0.25, delay: TimeInterval = 0, options: UIView.AnimationOptions = .curveEaseInOut, content: @escaping () -> Void, completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, delay: 0, options: options, animations: content, completion: completion)
    }
}
