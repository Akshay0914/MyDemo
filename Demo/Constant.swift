//
//  Constant.swift
//  Demo
//
//  Created by Akshay Patel on 24/01/19.
//  Copyright © 2019 Akshay Patel. All rights reserved.
//

import Foundation
import UIKit
import SQLite3

let APP_DELEGATE = UIApplication.shared.delegate as! AppDelegate
var appDefaultLanguage = "en"

func setViewAsPerLanguage()
{
    if APP_DELEGATE.currentLanguageisEnglish
    { //English language
       
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
        UINavigationBar.appearance().semanticContentAttribute = .forceLeftToRight
        let story = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = story.instantiateViewController(withIdentifier: "ViewController")
        
        APP_DELEGATE.window?.rootViewController = homeViewController
    }else{
        UINavigationBar.appearance().semanticContentAttribute = .forceRightToLeft
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        let story = UIStoryboard(name: "Main", bundle: nil)
        let homeViewController = story.instantiateViewController(withIdentifier: "ViewController")
        APP_DELEGATE.window?.rootViewController = homeViewController
    }
    
}
extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
}

