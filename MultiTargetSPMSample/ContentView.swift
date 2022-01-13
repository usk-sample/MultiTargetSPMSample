//
//  ContentView.swift
//  MultiTargetSPMSample
//
//  Created by Yusuke Hasegawa on 2022/01/12.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        
        VStack(spacing: 16) {
            HStack {
                Text("fetched : \(viewModel.fetchedNum)")
                Button("Fetch") {
                    viewModel.fetch()
                }
            }
            HStack {
                Text("visit : \(viewModel.visitNum)")
                Button("Increment") {
                    viewModel.incrementVisitNumber()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
