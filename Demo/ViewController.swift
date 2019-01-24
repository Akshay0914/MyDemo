//
//  ViewController.swift
//  Demo
//
//  Created by Akshay Patel on 24/01/19.
//  Copyright © 2019 Akshay Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblTitle : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         lblTitle.text = "Welcome".localized
       
    }

    @IBAction func btnEnglish(_ sender: Any)
    {
        APP_DELEGATE.currentLanguageisEnglish = true
        L102Language.setAppleLAnguageTo(lang: "en")
        setViewAsPerLanguage()
        lblTitle.text = "Welcome".localized
        
        
    }
    
    @IBAction func btnHindi(_ sender: Any)
    {
        APP_DELEGATE.currentLanguageisEnglish = false
        L102Language.setAppleLAnguageTo(lang: "hi")
        setViewAsPerLanguage()
        lblTitle.text = "Welcome".localized
        
        
    }
}

