//
//  TodoModel.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import Foundation
import SwiftData

// 우선사항
enum Priority: Int, RawRepresentable {
    case high = 2
    case medium = 1
    case low = 0
}

// 투두 모델
@Model
class Task: Identifiable {
    var id = UUID()
    var completed: Bool = false
    var text: String
    var priorityValue: Int
    var createDate: Date
    var color: String
    
    @Transient
    var dateString: String {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yy/MM/dd HH:mm"
        return dateFormatter.string(from: createDate)
    }
    
    var priority: Priority {
            get { Priority(rawValue: priorityValue) ?? .low }
            set { priorityValue = newValue.rawValue }
        }
    
    init(text: String, color: String, createDate: Date, priorityValue: Int) {
        self.text = text
//        self.priority = priority
        self.color = color
        self.createDate = createDate
        self.priorityValue = priorityValue
    }
}
