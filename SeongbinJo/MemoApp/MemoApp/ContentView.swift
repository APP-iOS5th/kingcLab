//
//  ContentView.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var memoVM: MemoViewModel = MemoViewModel()
    
    var body: some View {
        ZStack {
            MemoMainView()
                .environmentObject(memoVM)
        }
    }
}

#Preview {
    ContentView(memoVM: MemoViewModel())
}
