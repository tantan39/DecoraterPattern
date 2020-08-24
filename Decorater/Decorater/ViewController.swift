//
//  ViewController.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: FeatureViewController {
    
    let viewModel  = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FeatureProviders.getInstance().main().attach(self)
        
        doSubmit()
        
    }
    func doSubmit() {
        var request = [String : Any]()
        request["username"] = 1
        request["password"] = 2
        
        let forms=features.features.filter{ it in
            it is Form
        } as! [Form]
        
        viewModel.submit(request,forms)
    }
    
}

protocol Form {
    func buildRequest() -> [String : Any]
    func isValid() -> Bool
}

class MainViewModel {
    func submit(_ request:[String : Any],_ forms:[Form])  {
        var requestParams = request
        
        forms.forEach{form in
            if !form.isValid() {
                // Throw exception form invalid
            }
            
            form.buildRequest().forEach{ key,value in
                requestParams[key] = value
            }
        }
        // Do sumit with $requestParams
    }
}
