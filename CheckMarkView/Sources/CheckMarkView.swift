//
//  CheckMarkView.swift
//  CheckMarkView
//
//  Created by Maxim on 7/18/15.
//  Copyright (c) 2015 Maxim. All rights reserved.
//

import UIKit

class CheckMarkView: UIView {

	enum CheckMarkStyle: Int {
		case Nothing
		case OpenCircle
		case GrayedOut
	}
	
	var checked: Bool {
		get {
			return _checked
		}
		set(newValue) {
			_checked = newValue
			setNeedsDisplay()
		}
	}

	var style: CheckMarkStyle {
		get {
			return _style
		}
		set(newValue) {
			_style = newValue
			setNeedsDisplay()
		}
	}
	
	private var _checked: Bool = false
	private var _style: CheckMarkStyle = .Nothing
	
    override func drawRect(rect: CGRect) {
        
    }

}
