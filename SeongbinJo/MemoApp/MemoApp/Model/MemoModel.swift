//
//  MemoModel.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import Foundation
import SwiftUI
import SwiftData

@Model
class Memo {
    var id: UUID = UUID()
    var text: String
    var createDate: Date
    var color: String
    
    var createdDateString: String {
        get {
            let dateFormatter: DateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy년 MM월 dd일"
            return dateFormatter.string(from: createDate)
        }
    }
    
    init(text: String, createDate: Date, color: String) {
        self.text = text
        self.createDate = createDate
        self.color = color
    }
}
