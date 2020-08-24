//
//  Feature.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//
import UIKit
import Foundation

class Feature {
    func viewDidAppear(_ animated: Bool) {}
    
    func viewDidDisappear(_ animated: Bool){}
    
    func viewDidLoad(_ owner:UIViewController) {}
    
    func viewDidUnLoad()  {}
}

class FeatureList  {
    var features:[Feature]
    
    init(_ features:[Feature]){
        self.features = features
    }
    
    func viewDidAppear(_ animated: Bool) {
        self.features.forEach{it in
            it.viewDidAppear(animated)
        }
    }
    
    func viewDidDisappear(_ animated: Bool){
        self.features.forEach{it in
            it.viewDidDisappear(animated)
        }
    }
    
    func attach(_ owner:UIViewController) {
        self.features.forEach{it in
            it.viewDidLoad(owner)
        }
    }
    
    func detach()  {
        self.features.forEach{it in
            it.viewDidUnLoad()
        }
    }
}

class FeatureProvider{
    func provides() -> [Feature] {
        return [Feature]()
    }
    
    func attach(_ owner:FeatureViewController) {
        let features = FeatureList(provides())
        owner.attachFeatures(features)
    }
}
