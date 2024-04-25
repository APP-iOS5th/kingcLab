//
//  ContentView.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var todoVM: TodoViewModel = TodoViewModel()
    
    var body: some View {
        TodoMainView()
            .environmentObject(todoVM)
    }
}

#Preview {
    ContentView()
}
