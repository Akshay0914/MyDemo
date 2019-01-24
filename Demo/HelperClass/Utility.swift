

import Foundation
import UIKit

//==========================================================

//MARK: Get App Default Colors

//==========================================================
struct AppColors
{
   static let OrangeColor = UIColor(red: 254/255.0, green: 131/255.0, blue: 49/255.0, alpha: 1.0)
    static let SkyBlueColor = UIColor(red: 27/255.0, green: 154/255.0, blue: 247/255.0, alpha: 1.0)
    static let searchTextfieldBGColor = UIColor(red: 170.00/255.00, green: 170.00/255.00, blue: 170.00/255.00, alpha: 0.3)
        static let searchTextfieldLightBGColor = UIColor(red: 247.00/255.00, green: 247.00/255.00, blue: 247.00/255.00, alpha: 1.0)
    
}
//==========================================================

//MARK: Get Screen Size And Model Type

//==========================================================
//struct ScreenSize
//{
//    static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
//    static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
//    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
//    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
//    static let BOUNDS    = UIScreen.main.fixedCoordinateSpace.bounds
//    let settingStoryBoard = UIStoryboard(name: "Setting", bundle: nil)
//}
struct ModelType
{
   static let IS_IPHONE_5s = UIScreen.main.bounds.size.height == 568 ? true : false
   static let IS_IPHONE_6 = UIScreen.main.bounds.size.height == 667 ? true : false
    static let IS_IPHONE_7 = UIScreen.main.bounds.size.height == 667 ? true : false
    static let IS_IPHONE_8 = UIScreen.main.bounds.size.height == 667 ? true : false
    static let IS_IPHONE_X = UIScreen.main.bounds.size.height == 812 ? true : false
   static let IS_IPHONE_6_Plus = UIScreen.main.bounds.size.height == 736 ? true : false
    static let IS_IPHONE_7_Plus = UIScreen.main.bounds.size.height == 736 ? true : false
    static let IS_IPHONE_8_Plus = UIScreen.main.bounds.size.height == 736 ? true : false
   static let IS_IPHONE_4s = UIScreen.main.bounds.size.height == 480 ? true : false
   static let IS_IPAD_PRO_12_INCH = UIScreen.main.bounds.size.height == 1366 ? true : false
    static let IS_IPAD_PRO_10_INCH = UIScreen.main.bounds.size.height == 1366 ? true : false
   static let IS_IPAD = UIScreen.main.bounds.size.height == 1024 ? true : false
}

//==========================================================

//MARK: Validation Methods

//==========================================================

func validateEmail(_ text : String) -> Bool {
    let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
    let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
    return emailTest.evaluate(with: text)
}
func MobileNumbervalidate(value: String) -> Bool
{
    let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
    let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
    let result =  phoneTest.evaluate(with: value)
    return result
}
func PincodeValidation(value: String) -> Bool {
    if value.count == 6{
        return true
    }
    else{
        return false
    }
}

enum UIUserInterfaceIdiom : Int {
    case unspecified
    
    case phone // iPhone and iPod touch style UI
    case pad // iPad style UI
}

//=======================================================

// MARK: Image Custome Methods

//=======================================================
func imageResize(OriginalImage img: UIImage?, andResizeTo newSize: CGSize) -> UIImage? {
    let scale: CGFloat = UIScreen.main.scale
   
    UIGraphicsBeginImageContext(newSize)
    UIGraphicsBeginImageContextWithOptions(newSize, false, scale)
    img?.draw(in: CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height))
    let newImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage
}
func ImagetoBase64String(OriginalImage image: UIImage) -> String
{
    return image.pngData()!.base64EncodedString(options: .lineLength64Characters)
}
public func showActionSheet(_ delegate: UIViewController, message: String, strtittle: String, actionTittle: [String], actionStyle: [UIAlertAction.Style], withHandler handler: [((UIAlertAction) -> Void)]?)
{
    
    var actionSheetController: UIAlertController = UIAlertController()
    
    if message != "" || strtittle != ""
    {
        actionSheetController = UIAlertController(title: strtittle, message: message, preferredStyle: UIAlertController.Style.actionSheet)
    }
    
    for i in 0..<actionTittle.count
    {
        actionSheetController.addAction(UIAlertAction(title: actionTittle[i],
                                                      style: actionStyle[i],
                                                      handler: handler?[i]))
    }
    
    delegate.present(actionSheetController, animated: true, completion: nil)
    
}
public func showMultipleActionSheet(message: String, strtittle: String, actionTittle: [String], actionStyle: [UIAlertAction.Style], withHandler handler: [((UIAlertAction) -> Void)]?)->UIAlertController
{
    
    var actionSheetController: UIAlertController = UIAlertController()
    
    if message != "" || strtittle != ""
    {
        actionSheetController = UIAlertController(title: strtittle, message: message, preferredStyle: UIAlertController.Style.actionSheet)
        
    }
    
    for i in 0..<actionTittle.count
    {
        actionSheetController.addAction(UIAlertAction(title: actionTittle[i],
                                                      style: actionStyle[i],
                                                      handler: handler?[i]))
    }
    
    // delegate.present(actionSheetController, animated: true, completion: nil)
    return actionSheetController
}
//=======================================================

// MARK: Animation Methods

//=======================================================
 func showAnimation(_ myView: UIView?)
 {
    myView?.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
    myView?.alpha = 0
    myView?.isHidden = false
    UIView.animate(withDuration: 0.25, animations: {
        myView?.alpha = 1
        myView?.transform = CGAffineTransform(scaleX: 1, y: 1)
    })
}

func removeAnimation(_ myView: UIView?) {
    UIView.animate(withDuration: 0.25, animations: {
        myView?.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        myView?.alpha = 0.0
    }) { finished in
        myView?.isHidden = true
    }
}

func makeShakeAnimation(for animationView: UIView?)
{
    animationView?.layer.transform = CATransform3DMakeTranslation(10.0, 0.0, 0.0)
    UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.8, options: .curveEaseOut, animations: {
        animationView?.layer.transform = CATransform3DIdentity
    }) { finished in
        animationView?.layer.transform = CATransform3DIdentity
    }
}
//=======================================================

// MARK: UserDefault MEthods

//=======================================================
func setObjectInUserDefault(_ value: Any?, forKey key: String)
{
   
    UserDefaults.standard.set(value, forKey: key)
    UserDefaults.standard.synchronize()
}

func setBoolInUserDefault(_ value: Bool, forKey Key: String)
{

    UserDefaults.standard.set(value, forKey: Key)
    UserDefaults.standard.synchronize()
}

func removeObjectFromUserDefault(forKey key: String)
{

    UserDefaults.standard.removeObject(forKey: key)
    UserDefaults.standard.synchronize()
}

func getObjectFromUserDefault(forKey key: String) -> Any?
{
   
    return UserDefaults.standard.object(forKey: key)
}
func getBoolFromUserDefault(forKey key: String) -> Bool
{
  
    return UserDefaults.standard.bool(forKey: key)
}
//=======================================================

// MARK: Notification Methods

//=======================================================
func addObserver(_ target: Any?, selector: Selector, name: String?)
{
    
    if let aTarget = target {
        NotificationCenter.default.addObserver(aTarget, selector: selector, name: NSNotification.Name(name!), object: nil)
    }
}

func removeObserver(_ target: Any)
{
 
    NotificationCenter.default.removeObserver(target)
}

func post(_ notification: String?)
{
   
    NotificationCenter.default.post(name: NSNotification.Name(notification!), object: nil)
}







