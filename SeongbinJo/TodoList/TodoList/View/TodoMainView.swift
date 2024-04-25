//
//  TodoMainView.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import SwiftUI
import SwiftData

struct TodoMainView: View {
    @EnvironmentObject var todoVM: TodoViewModel
    
    @State var addViewZIndex: CGFloat = -1
    
    @Query var todos: [Task]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(todos) { todo in
                            TodoView(recWidth: 340, recHeight: 70, recColor: todoVM.convertColor(colorString: todo.color), task: todo)
                        }
                    }
                    .padding(.top, 10)
                }
                .navigationTitle("Kingclab - Bin's Todo")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            addViewZIndex = 1
                        }) {
                            Text("추가")
                        }
                    }
                }
                AddTodoView(addViewZIndex: $addViewZIndex)
                    .zIndex(addViewZIndex)
            }
        }
    }
}

#Preview {
    TodoMainView()
}
