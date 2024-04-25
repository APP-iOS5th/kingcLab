//
//  TodoViewModel.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import Foundation
import SwiftData
import SwiftUI


class TodoViewModel: ObservableObject {
    
    func addTodo(text: String, date: Date, color: String, modelContext: ModelContext, priority: Int) {
        let todo: Task = Task(text: text, color: color, createDate: date, priorityValue: priority)
        modelContext.insert(todo)
    }
    
    func removeTodo(todo: Task, modelContext: ModelContext) {
        modelContext.delete(todo)
    }
    
    func toggleComplete(todo: Task) {
        todo.completed.toggle()
    }
    
    func convertColor(colorString: String) -> Color {
        let beforeConverColor = colorString.components(separatedBy: " ")
        let red: Double = Double(beforeConverColor[0]) ?? 0.0
        let green: Double = Double(beforeConverColor[1]) ?? 0.0
        let blue: Double = Double(beforeConverColor[2]) ?? 0.0
        let opacity: Double = Double(beforeConverColor[3]) ?? 0.0
        
        let color = Color(red: red, green: green, blue: blue, opacity: opacity)
        
        return color
    }

}
