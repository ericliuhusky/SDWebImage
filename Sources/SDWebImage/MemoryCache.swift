//
//  MemoryCache.swift
//  
//
//  Created by ericliuhusky on 2022/9/17.
//

import Foundation
import UIKit

class MemoryCache: NSCache<NSString, UIImage> {
    func cache(for key: String) -> UIImage? {
        object(forKey: key as NSString)
    }
    
    func set(_ cache: UIImage, for key: String) {
        setObject(cache, forKey: key as NSString, cost: cache.cost)
    }
    
    func clear() {
        removeAllObjects()
    }
}
