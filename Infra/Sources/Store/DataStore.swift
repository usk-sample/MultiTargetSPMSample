//
//  DataStore.swift
//  
//
//  Created by Yusuke Hasegawa on 2022/01/12.
//

import Foundation

/// Store Data to UserDefaults
class DataStore {
    
    private let defaults = UserDefaults.standard
    
}

extension DataStore {
    
    var visitNumber: Int {
        set {
            defaults.set(newValue, forKey: "num_visit")
            defaults.synchronize()
        }
        get {
            return defaults.integer(forKey: "num_visit")
        }
    }
    
    var fetchedNumber: Int {
        set {
            defaults.set(newValue, forKey: "num_fetched")
            defaults.synchronize()
        }
        get {
            return defaults.integer(forKey: "num_fetched")
        }
    }
    
}
