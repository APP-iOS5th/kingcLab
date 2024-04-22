//
//  MomoViewModel.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import Foundation
import SwiftUI
import SwiftData


class MemoViewModel: ObservableObject {
    let colors: [Color] = [.blue, .cyan, .purple, .yellow, .indigo]
    
    func addMemo(text: String, createDate: Date, color: String, modelContext: ModelContext) {
        let memo: Memo = Memo(text: text, createDate: Date(), color: color)
        modelContext.insert(memo)
    }
    
    func removeMemo(targetMemo: Memo, modelContext: ModelContext) {
        modelContext.delete(targetMemo)
    }
    
    func memoColor(color: String) -> Color {
        switch color {
        case "blue":
            return .blue
        case "cyan":
            return .cyan
        case "purple":
            return .purple
        case "yellow":
            return .yellow
        case "indigo":
            return .indigo
        default:
            return .gray
        }
    }
}
