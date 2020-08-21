//
//  RenderingTarget.swift
//  DynamicBlurView
//
//  Created by Dragomir Ivanov on 21.08.20.
//  Copyright © 2020 Trading 212. All rights reserved.
//

import UIKit

public enum RenderingTarget {
    case superview
    case window(UIWindow? = nil)
    case custom(target: () -> UIView?)
    
    var isDeepRendering: Bool {
        switch self {
        case .superview:
            return false
        case .window, .custom:
            return true
        }
    }
}
