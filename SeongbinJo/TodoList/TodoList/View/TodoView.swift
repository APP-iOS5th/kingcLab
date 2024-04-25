//
//  TodoView.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import SwiftUI

struct TodoView: View {
    
    let recWidth: CGFloat
    let recHeight: CGFloat
    
    let recColor: Color
    
    @State var isCompleted: Bool = false
    
    let task: Task
    
    var body: some View {
        HStack(alignment: .center) {
            // 투두 실행 여부
            Button(action: {
                isCompleted.toggle()
            }) {
                Image(systemName: isCompleted ? "checkmark.circle" : "circle")
                    .font(.system(size: 23))
            }
            .padding(.trailing, 10)
            
            // 투두 내용 + 작성 날짜, 시간
            VStack(alignment: .leading) {
                Text(task.text)
                Text(task.dateString)
                    .font(.system(size: 13))
                    .foregroundStyle(.gray)
            }
            Spacer()
            // 우선순위
            HStack(alignment: .bottom) {
                Text("중요도")
                    .font(.system(size: 15))
                switch task.priority {
                case .high:
                    Image(systemName: "star.fill")
                case .medium:
                    Image(systemName: "star.leadinghalf.filled")
                case .low:
                    Image(systemName: "star")
                }
            }
        }
        .padding()
        .frame(width: recWidth, height: recHeight)
        .background(recColor)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

//#Preview {
//    TodoView(recWidth: 340, recHeight: 70, recColor: .yellow, task: Task(completed: false, text: "Todo 1", priority: .medium, createDate: Date(), color: ""))
//}
