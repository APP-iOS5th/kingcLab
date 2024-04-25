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
    
    // @Model 에서 추적을 피하게 해줌. => DB에 저장될 Memo 모델에 @Transient 부분은 빠짐.
    @Transient
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
