//
//  File.swift
//  
//
//  Created by Yusuke Hasegawa on 2022/01/12.
//

import Foundation
import Store

public class VisitUsecase {
    private let store = DataStore()
}

extension VisitUsecase {
    
    public func currentVisitNumber() -> Int {
        return store.visitNumber
    }
    
    public func incrementVisitNumber() -> Int {
        let  num = store.visitNumber + 1
        store.visitNumber = num
        return num
    }
    
}
