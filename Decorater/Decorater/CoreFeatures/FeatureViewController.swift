//
//  FeatureViewController.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//

import Foundation
import UIKit

class FeatureViewController: UIViewController {
    
    private var mFeatureList:FeatureList? = nil
    
    var features:FeatureList {
        get{
            return mFeatureList ?? FeatureList([Feature]())
        }
    }
    
    func attachFeatures(_ features:FeatureList)  {
        features.attach(self)
        self.mFeatureList = features
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.mFeatureList?.viewDidAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.mFeatureList?.viewDidDisappear(animated)
    }
    
    deinit {
        self.mFeatureList?.detach()
        self.mFeatureList = nil
    }
}
