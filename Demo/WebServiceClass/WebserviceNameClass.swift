//
//  WebserviceNameClass.swift
//  Yahelwa
//
//  Created by JScop on 26/11/17.
//  Copyright © 2017 admin. All rights reserved.
//

import Foundation
import UIKit

let MAINURL = "http://creativewebdesignideas.com:3003/"
//let MAINURL = "http://192.168.1.8:3000/"


//let success = "200"
//let error =  "404"

//****************************************************************************
//Login

let LOGIN_EMAIL = "email"
let LOGIN_PASSWORD = "password"


let LOGIN_API = String(format: "%@users/app/login/",MAINURL)
//****************************************************************************
//Signup


let SIGNUP_EMAIL = "email"
let SIGNUP_PASSWORD = "password"
let SIGNUP_ACCESSCODE = "accesscode"
let SIGNUP_NAME = "name"
let SIGNUP_COUNTRY = "country"
let SIGN_UP_DEVICE_TOKEN = "device_id"


let SIGNUP_API = String(format: "%@users/app/",MAINURL)
//****************************************************************************
//Signup AccessCode Validation


let SIGNUP_V_EMAIL = "email"
let SIGNUP_V_ACCESSCODE = "code"


let SIGNUP_ACCESSCODE_VERIFY_API = String(format: "%@access/code/validate/",MAINURL)

//****************************************************************************
//Country

let COUNTRY_API = String(format: "%@country/", MAINURL)

//****************************************************************************
//Self Assessment questions

let GET_SELF_ASSESSMENT_LIST_API = String(format: "%@selfsheets/latest/", MAINURL)


//****************************************************************************
//Start Self Assessment

let START_SELF_ASSESSMENT_USER_ID = "user_id"

let START_SELF_ASSESSMENT_API = String(format: "%@selfsheets/", MAINURL)

//****************************************************************************
//end Self Assessment

let END_SELF_ASSESSMENT_API = String(format: "%@answersheets/", MAINURL)

//****************************************************************************
// Assessment For questions

let GET_ASSESSMENT_FOR_LIST_API = String(format: "%@sheets/latest/", MAINURL)

//****************************************************************************
//Start Assessment For

let START_ASSESSMENT_FOR_USER_ID = "user_id"

let START_ASSESSMENT_FOR_API = String(format: "%@sheets/", MAINURL)

//****************************************************************************
//Forgot Password verify

let FORGOT_PASSWORD_USER_ID = "user_id"
let FORGOT_PASSWORD_PASSWORD = "password"

let FORGOT_PASSWORD_API = String(format: "%@users/app/reset/password/", MAINURL)

//****************************************************************************
//Forgot Password Send OTP

let FORGOT_PASSWORD_EMAILID = "email"

let FORGOT_PASSWORD_SEND_OTP_API = String(format: "%@users/app/send/otp/", MAINURL)
//****************************************************************************
//Help

let HELP_API = String(format: "%@help/", MAINURL)

//****************************************************************************

// LeaderBord

let LEADERBORD_API = String(format: "%@answersheets/leaderboard/", MAINURL)

//****************************************************************************

// Get Profile

let GET_PROFILE_API = String(format: "%@users/app/", MAINURL)

//****************************************************************************

let NOTIFICATION_API = String(format: "%@notification/", MAINURL)

//****************************************************************************

let NOTIFICATION_COUNT_API = String(format: "%@notification/count/unread/", MAINURL)

//****************************************************************************
extension NSMutableAttributedString {
    @discardableResult func bold(_ text: String) -> NSMutableAttributedString {
        let attrs: [NSAttributedStringKey: Any] = [.font: UIFont(name: "Aller-Bold", size: 20)!]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        append(boldString)
        return self
    }
    
    @discardableResult func normal(_ text: String) -> NSMutableAttributedString {
        let normal = NSAttributedString(string: text)
        append(normal)
        return self
    }
}
