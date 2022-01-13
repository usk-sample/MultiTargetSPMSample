//
//  FetchUsecase.swift
//  
//
//  Created by Yusuke Hasegawa on 2022/01/12.
//

import Foundation
import Api
import Store

public class FetchUsecase {
    
    private let api = Api()
    private let store = DataStore()
    
    public init() {
        
    }
    
}

extension FetchUsecase {
    
    public func fetchAndStore() -> Int {
        let num = api.request()
        store.fetchedNumber = num
        return num
    }
    
}
