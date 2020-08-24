//
//  FeatureProviders.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//

import Foundation

class FeatureProviders {
    static var delegate:FeatureProviders = FeatureProviders()
    
    static func getInstance() -> FeatureProviders{
        return delegate
    }
    
    func main() -> FeatureProvider {
        return FeatureProvider()
    }
    
    func menu() -> FeatureProvider {
        return FeatureProvider()
    }
    
}
