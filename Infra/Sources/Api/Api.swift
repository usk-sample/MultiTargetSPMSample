//
//  Api.swift
//  
//
//  Created by Yusuke Hasegawa on 2022/01/12.
//

import Foundation
import Alamofire
import Store

public class Api {
    
    public init() {
        
    }
}

extension Api {
    public func request() -> Int {
        return Int.random(in: 0...100)
    }
}
