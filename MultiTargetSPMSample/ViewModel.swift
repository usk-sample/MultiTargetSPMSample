//
//  ViewModel.swift
//  MultiTargetSPMSample
//
//  Created by Yusuke Hasegawa on 2022/01/13.
//

import Foundation
import FetchFeature
import VisitFeature

class ViewModel: ObservableObject {
    
    @Published var visitNum: Int = 0
    @Published var fetchedNum: Int = 0
    
    private let fetchUsecase = FetchUsecase()
    private let visitUsecase = VisitUsecase()
    
    init() {
        debugPrint("[ViewModel]init")
        visitNum = visitUsecase.currentVisitNumber()
        debugPrint(visitNum)

    }
    
}

extension ViewModel {
    
    func fetch() {
        fetchedNum = fetchUsecase.fetchAndStore()
    }
    
    func incrementVisitNumber() {
        visitNum = visitUsecase.incrementVisitNumber()
    }
    
}
