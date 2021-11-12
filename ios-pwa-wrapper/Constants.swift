//
//  Constants.swift
//  ios-pwa-wrapper
//
//  Created by Martin Kainzbauer on 29/10/2017.
//  Copyright © 2017 Martin Kainzbauer. All rights reserved.
//

import UIKit

// Basic App-/WebView-configuration
let appTitle = ""
let webAppUrl = URL(string: "https://maipi.ec")
//let allowedOrigin = "maipi.ec"
let allowedOrigins = [
    "maipi.ec",
    "accounts.google.com",
    "accounts.youtube.com",
    "facebook.com",
    "appleid.apple.com"
    
]
let menuButtonTitle = NSLocalizedString("", comment: "")
let menuButtonJavascript = ""

let useUserAgentPostfix = true
let userAgentPostfix = "iOSApp"
let useCustomUserAgent = true
let customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 14_7_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) FxiOS/36.0  Mobile/15E148 Safari/605.1.15"

// UI Settings
let changeAppTitleToPageTitle = false
let forceLargeTitle = false
let enableBounceWhenScrolling = true

// change Menu button depending on screen width
// IMPORTANT: do not enable this yet, it's still buggy
let changeMenuButtonOnWideScreens = false
let wideScreenMinWidth = CGFloat(993) // your CSS Media Query px-breakpoint

// Colors & Styles
let useLightStatusBarStyle = true
let navigationBarColor = getColorFromHex(hex: 0xC1214B, alpha: 1.0)
let navigationTitleColor = getColorFromHex(hex: 0xFFFFFF, alpha: 1.0)
let navigationButtonColor = navigationTitleColor
let progressBarColor = getColorFromHex(hex: 0xDE1E3F, alpha: 1.0)
let offlineIconColor = UIColor.darkGray
let buttonColor = navigationBarColor
let activityIndicatorColor = navigationBarColor

// Color Helper function
func getColorFromHex(hex: UInt, alpha: CGFloat) -> UIColor {
    return UIColor(
        red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(hex & 0x0000FF) / 255.0,
        alpha: CGFloat(alpha)
    )
}
