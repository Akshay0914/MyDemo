////
////  APIManager.swift
////  Verdict
////
////  Created by Dharti on 26/06/17.
////  Copyright © 2017 iOS. All rights reserved.
////
//
import Foundation
import UIKit
import Alamofire
import SVProgressHUD

class APIManager {
    class var sharedInstance : APIManager {
        struct Static {
            static let instance : APIManager = APIManager()
        }
        return Static.instance
    }
//    func postDataToServer(webservice: String, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: JSON?, _ error:Error?) -> Void) -> DataRequest{
//        
//        let url = MAINURL + webservice
//        
//        
//        
//        let request =  Alamofire.request(url, method: .post, parameters: parameter, encoding: URLEncoding.default, headers: nil).responseJSON { (response:DataResponse<Any>) in
//            
//            
//            switch(response.result) {
//            case .success(_):
//                if let data = response.result.value{
////                    let finalJson = JSON(data)
//                    callBack(finalJson,nil)
//                }
//                break
//                
//            case .failure(_):
//                if let error = response.result.error
//                {
//                    callBack(nil,error)
//                    // print("Error",error.localizedDescription)
//                }
//                // debugprint("\nResponse ERROR:\n",response)
//                break
//            }
//           
//        }
//        // debugprint(request)
//        return request
//        
//    }
    func postJSONDataToServer(webservice: String, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
         showHud(view)
        let headers: HTTPHeaders = [
            "x-auth": kUserDefault.value(forKey: UserDefaultKeys.authToken.rawValue) as! String
        ]
        
        let request =  Alamofire.request(webservice, method: .post, parameters: parameter, encoding:JSONEncoding.default, headers: headers).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
            switch(response.result) {
            case .success(_):
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                   print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
           
        }
        // debugprint(request)
        
        return request
        
    }
    
    func postJSONDataToServerLogin(webservice: String, isFromLogin : Bool, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
        showHud(view)
        
        let request =  Alamofire.request(webservice, method: .post, parameters: parameter, encoding:JSONEncoding.default, headers: nil).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
          
          
            switch(response.result) {
            case .success(_):
                if isFromLogin
                {
                    let dict = response.response?.allHeaderFields as! [String : Any]
                    let tokenAuth = dict["x-auth"]!
                    kUserDefault.set(tokenAuth, forKey: UserDefaultKeys.authToken.rawValue)
                }
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                    print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
            
        }
        // debugprint(request)
        
        return request
        
    }
    
    func postJSONDataToServerPretty(webservice: String, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
        showHud(view)
        let headers: HTTPHeaders = [
            "x-auth": kUserDefault.value(forKey: UserDefaultKeys.authToken.rawValue) as! String
        ]
        
        let request =  Alamofire.request(webservice, method: .post, parameters: parameter, encoding:JSONEncoding.default, headers: headers).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
            switch(response.result) {
            case .success(_):
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                    print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
            
        }
        // debugprint(request)
        
        return request
        
    }
    func patchJSONDataToServer(webservice: String, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
        showHud(view)
        
        let headers: HTTPHeaders = [
            "x-auth": kUserDefault.value(forKey: UserDefaultKeys.authToken.rawValue) as! String
        ]
        
        let request =  Alamofire.request(webservice, method: .patch, parameters: parameter, encoding:JSONEncoding.default, headers: headers).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
            switch(response.result) {
            case .success(_):
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                    print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
            
        }
        // debugprint(request)
        
        return request
        
    }
    
    func patchJSONDataToServerBeforeLogin(webservice: String, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
        showHud(view)
        
        
        let request =  Alamofire.request(webservice, method: .patch, parameters: parameter, encoding:JSONEncoding.default, headers: nil).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
            switch(response.result) {
            case .success(_):
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                    print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
            
        }
        // debugprint(request)
        
        return request
        
    }
    
    func getJSONDataToServer(webservice: String, view : UIView, parameter: [String: Any]?,callBack:@escaping (_ dataFromServer: Data, _ error:Error?) -> Void) -> DataRequest{
        
        
        showHud(view)
        
        let headers: HTTPHeaders = [
            "x-auth": kUserDefault.value(forKey: UserDefaultKeys.authToken.rawValue) as! String
        ]
        let request =  Alamofire.request(webservice, method: .get, parameters: parameter, encoding:JSONEncoding.default, headers: headers).validate().responseJSON
        { (response:DataResponse<Any>) in
            
            self.hideHud(view)
            switch(response.result) {
            case .success(_):
                callBack(response.data! ,nil)
                debugPrint("\nResponse Success:\n",response)
                
                break
                
            case .failure(_):
                if let error = response.result.error
                {
                    callBack(response.data!,error)
                    print("Error",error.localizedDescription)
                }
                // debugprint("\nResponse ERROR:\n",response)
                break
            }
            
        }
        // debugprint(request)
        
        return request
        
    }
    func showHud(_ view: UIView?) {
        view?.isUserInteractionEnabled = false
        SVProgressHUD.setDefaultStyle(.light)
        SVProgressHUD.show()
    }

    func hideHud(_ view: UIView?) {
        view?.isUserInteractionEnabled = true
        SVProgressHUD.dismiss()
    }
    func startNetworkReachabilityObserver() -> String
    {
        var msg : String = ""
         let reachabilityManager = Alamofire.NetworkReachabilityManager(host: "www.google.com")
        reachabilityManager?.listener = { status in
            
            switch status {
                
            case .notReachable:
                msg = "The network is not reachable"
                
            case .unknown :
                msg = "It is unknown whether the network is reachable"
                
            case .reachable(.ethernetOrWiFi):
                msg = "The network is reachable over the WiFi connection"
                
            case .reachable(.wwan):
               msg = "The network is reachable over the WWAN connection"
                
            }
            
        }
        
        // start listening
        reachabilityManager?.startListening()
        return msg
    }
}
