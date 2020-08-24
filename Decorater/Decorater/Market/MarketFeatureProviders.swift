//
//  MarketFeatureProviders.swift
//  Test3
//
//  Created by Quang Phan on 8/5/20.
//  Copyright © 2020 Quang Phan. All rights reserved.
//

import Foundation


// In the application market loaded, override this
//FeatureProviders.delegate = MarketFeatureProviders()
class MarketFeatureProviders: FeatureProviders {
    
    override func main() -> FeatureProvider {
        return MarketMainFeatureProvider()
    }
    
    override func menu() -> FeatureProvider {
        // Optional to override this 
        return FeatureProvider()
    }
}

