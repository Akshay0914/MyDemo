//
//  L102Language.swift
//  TestApplication
//
//  Created by MAC on 6/14/17.
//  Copyright © 2017 MAC. All rights reserved.
//

import Foundation
import UIKit
// constants
let APPLE_LANGUAGE_KEY = "AppleLanguages"
/// L102Language
class L102Language {
    /// get current Apple language
    class func currentAppleLanguage() -> String{
        let userdef = UserDefaults.standard
        let langArray = userdef.object(forKey: APPLE_LANGUAGE_KEY) as! NSArray
        
        var current = langArray.firstObject as! String
        if current == "en"
        {
            current = "en"
        }
        else if current == "hi"
        {
            current = "hi"
        }else{
            current = "en"
        }
        return current
    }
    /// set @lang to be the first in Applelanguages list
    class func setAppleLAnguageTo(lang: String) {
        let userdef = UserDefaults.standard
        
        userdef.setValue([lang,currentAppleLanguage()], forKey: APPLE_LANGUAGE_KEY)
//        userdef.setObject(, forKey: APPLE_LANGUAGE_KEY)
        userdef.synchronize()
    }
}


