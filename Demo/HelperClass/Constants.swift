//
//  Constants.swift
//  Move
//
//  Created by Akshay Patel on 25/09/18.
//  Copyright © 2018 Akshay Patel. All rights reserved.
//

import Foundation
import UIKit

//==========================================================

//MARK: GetStoryBoard Name

//==========================================================
enum AppStoryboard : String {
    case Main = "Main"
    case GeneralSetting1To3 = "GeneralSetting1To3"
    case GeneralSetting5To9 = "GeneralSetting5To9"
    case Settings1To3 = "Settings1To3"
    case Settings5To10 = "Settings5To10"
    case FilterSetting = "FilterSetting"
    case CommentControls = "CommentControls"
    case Notification = "Notification"
    case QuestionAndAnswer = "QuestionAndAnswer"
    case BlockScreens = "BlockScreens"
    case SpotlightSearch = "SpotLightSearch"
    case RecentSearch = "RecentSearch"
    case UserProfileModule = "UserProfileModule"
    case community = "Community"
    case Timeline = "Timeline"
    case CreatePost = "CreatePost"
    case CreatePost2 = "CreatePost2"
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
}

//==========================================================

//MARK: Setting Screen Titles

//==========================================================




struct ScreenHeaderTitles
{
   static let saveLoginInfo : String = "Save Login Info".localized()
    static let changePassword : String = "Change Password".localized()
    static let PrivateAccount : String = "Private Account".localized()
    static let language : String = "Language".localized()
    static let blockeUser : String = "Blocked Users".localized()
    static let contacts : String = "Contacts".localized()
    static let sounds : String = "Sounds".localized()
    static let clearSearchHistory : String = "Clear Search History".localized()
    static let pushNotificationSetting : String = "Push Notifications".localized()
    static let emailAndSmsNotification : String = "Email And Sms".localized()
    static let filter : String = "Filters".localized()
    static let comment : String = "Comments".localized()
    static let timeMap : String = "TimeMap".localized()
    static let postOption : String = "Post Options".localized()
    static let display : String = "Display".localized()
    static let about : String = "About And Support".localized()
    static let cellularDataUse : String = "Cellular Data Use".localized()
    static let VideoAutoPlay : String = "Video AutoPlay".localized()
    static let highQualityVideo : String = "High-quality videos".localized()
    static let highQualityImage : String = "High-quality images".localized()
    static let deActivateAccount : String = "Deactivate your account".localized()
    static let advanceFilter : String = "Advance Filters".localized()
    static let mutedWords : String = "Muted Words".localized()
    static let addMutedWords : String = "Add Muted Words".localized()
    static let duration : String = "Duration".localized()
    static let commentController : String = "Comment Controls".localized()
    static let allowCommentFrom : String = "Allow Comments From".localized()
    static let blockCommentFrom : String = "Block Comments From".localized()
    static let blockTiming : String = "Blockd Time-Viewing".localized()
    static let moreSuggestion : String = "More Suggestions".localized()
}

//==========================================================

//MARK: Get Plist File With Data

//==========================================================
struct GetPlistfileName
{
    static let SettingMenuList : String = "SettingMenu"
    static let PushNotificationMenuList : String = "PushNotificationMenu"
}

func getPlistDataFromFile(FileName : String) -> NSDictionary
{
    let path = Bundle.main.path(forResource: FileName, ofType: "plist")
    var dictRoot: NSDictionary?
    dictRoot = NSDictionary(contentsOfFile: path!)
    
    return dictRoot!
}
func getPlistArrayDataFromFile(FileName : String) -> NSArray
{
    let path = Bundle.main.path(forResource: FileName, ofType: "plist")
    var rootArray: NSArray?
    rootArray = NSArray(contentsOfFile: path!)
    
    return rootArray!
}


func getSettingMenuList() -> NSMutableDictionary
{
    let arrGeneral : [String] = ["Save Login Info".localized(),
                                 "Change Password".localized(),
                                 "Private Account".localized(),
                                 "Language".localized(),
                                 "Add a Account".localized(),
                                 "Blocked Users".localized(),
                                 "Contacts".localized(),
                                 "Sounds".localized(),
                                 "Clear Search History".localized(),
                                 "Logout".localized()]
    
    let arrSettings : [String] = ["Push Notification Settings".localized(),
                                  "Email and SMS Notification".localized(),
                                  "Filters".localized(),
                                  "Comments".localized(),
                                  "Time Map".localized(),
                                  "Post Options".localized(),
                                  "Display".localized(),
                                  "About and Support".localized(),
                                  "Cellular Data Use".localized(),
                                  "Deactivate Account".localized()]
    let SettingMenu = NSMutableDictionary()
    SettingMenu.setObject(arrGeneral, forKey: "General".localized() as NSCopying)
    SettingMenu.setObject(arrSettings, forKey: "Settings".localized() as NSCopying)
    return SettingMenu
}
func getStringArrayData()->NSArray{
    let dict1 = ["titile":"Likes".localized(),"isCheckBox":1] as [String : Any];
    let dict2 = ["titile":"Comments".localized(),"isCheckBox":1] as [String : Any];
    let dict3 = ["titile":"Comments on Photos with You".localized(),"isCheckBox":1] as [String : Any];
    let dict4 = ["titile":"Reports".localized(),"isCheckBox":1] as [String : Any];
    let dict5 = ["titile":"Mentions And Replies".localized(),"isCheckBox":1] as [String : Any];
    let dict6 = ["titile":"Photo Tags".localized(),"isCheckBox":1] as [String : Any];
    let dict7 = ["titile":"Accepted Add Requested".localized(),"isCheckBox":1] as [String : Any];
    let dict8 = ["titile":"Direct Messages".localized(),"isCheckBox":0] as [String : Any];
    let dict9 = ["titile":"Direct Message Requests".localized(),"isCheckBox":0]as [String : Any];
    let dict10 = ["titile":"First Post".localized(),"isCheckBox":1] as [String : Any];
    let dict11 = ["titile":"Move and Event Invites".localized(),"isCheckBox":1] as [String : Any];
    let dict12 = ["titile":"Accepted 1 on 1 Invites".localized(),"isCheckBox":1] as [String : Any];
    let dict13 = ["titile":"Rejected 1 on 1 Invites".localized(),"isCheckBox":1] as [String : Any];
    let dict14 = ["titile":"1 on 1 Invites".localized(),"isCheckBox":1] as [String : Any];
    let dict15 = ["titile":"Q & A".localized(),"isCheckBox":1] as [String : Any];
    let dict16 = ["titile":"Move/Event Reminders".localized(),"isCheckBox":0] as [String : Any];
    let dict17 = ["titile":"Live Streems".localized(),"isCheckBox":0] as [String : Any];
    let dict18 = ["titile":"2-3 Way Live Streem".localized(),"isCheckBox":0] as [String : Any];
    let dict19 = ["titile":"Broadcasting".localized(),"isCheckBox":0] as [String : Any];
    let dict20 = ["titile":"Headcount".localized(),"isCheckBox":0] as [String : Any];
    let dict21 = ["titile":"Trending".localized(),"isCheckBox":0] as [String : Any];
    
    let arrDict = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19,dict20,dict21];
    return arrDict as NSArray;
    
    
}
func getStringArrayDataTemp()->NSArray{
    let arrDict = ["JohnDeo Liked your post".localized(),
                   "JohnDeo Commented \"hey".localized(),
                   "JohnDeo commented on a post your tagged in".localized(),
                   "JohnDeo reposted your post".localized(),
                   "JohnDeo mentioned you \n JohnDeo replied to your comment.".localized(),
                   "JohnDeo tagged you in a photo".localized(),
                   "JohnDeo accepted your add request".localized(),
                   "JohnDeo sent you a message".localized(),
                   "JohnDeo wants to send you a message".localized(),
                   "JohnDeo just made his first post on Movespot".localized(),
                   "JohnDeo just invited you to \"Basketball Game".localized(),
                   "JohnDeo just invited you to \"Basketball Game".localized(),
                   "JohnDeo rejected your invite to the 1 on 1 move \"Basketball Game".localized(),
                   "JohnDeo just invited you to \"Basketball Game".localized(),
                   "JohnDeo asked you a question.".localized(),
                   "JohnDeo started live stream.".localized(),
                   "JohnDeo started live stream.".localized(),
                   "JohnDeo joined saralee's live stream,and other similar notification.".localized(),
                   "JohnDeo broadcasting \"BasketBall Game.".localized(),
                   "JohnDeo created a headcount for \"BasketBall Game.".localized(),
                   "Your move event  \"BasketBall Game. is now treding".localized()];
    return arrDict as NSArray;
    
    
}
func getLanguageList()->NSDictionary{
    let languageDescArray = ["System Default",
                             "German",
                             "Greek",
                             "Japanese",
                             "",
                             "Ukrainian",
                             "Norwegian Bokmal",
                             "Chinese (Traditional)",
                             "Spanish",
                             "Danish"];
    
    let languageArray = ["English(United State)",
                         "Deutsch",
                         "Ελληνικά",
                         "日本語",
                         "English",
                         "Українська",
                         "Norsk (bokmål)",
                         "中文(台灣)",
                         "Español",
                         "Dansk"];
    let dictLanguage = ["languageTitle":languageArray,"languageDesc":languageDescArray];
    
    return dictLanguage as NSDictionary
}
//==========================================================

//MARK: UserDefaults Keys

//==========================================================
struct userDefaultKeys
{
    static let getLanguageKey : String = "getLanguage"

    
}
