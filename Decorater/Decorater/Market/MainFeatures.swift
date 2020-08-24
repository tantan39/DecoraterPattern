//
//  File.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//
import UIKit
import Foundation


class MarketMainFeatureProvider : FeatureProvider{
    
    override func provides() -> [Feature] {
        var features=[Feature]()
        features.append(TestFeature())
        features.append(Test1Feature())
        return features
    }
}


class TestFeature: Feature {
    
    weak var owner:ViewController? = nil
    
    override func viewDidLoad(_ owner: UIViewController) {
        self.owner = owner as? ViewController
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidUnLoad() {
        
    }
}

class Test1Feature: Feature, Form {
    
    func buildRequest() -> [String : Any] {
        return [String : Any]()
    }
    
    func isValid() -> Bool {
        return true
    }
    
}
