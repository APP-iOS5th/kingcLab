//
//  AddTodoView.swift
//  TodoList
//
//  Created by 조성빈 on 4/25/24.
//

import SwiftUI
import UIKit

struct AddTodoView: View {
    @EnvironmentObject var todoVM: TodoViewModel
    
    @State var todoText: String = ""
    
    @State var selectedColor: Color = .black
    @State var resolvedColor: Color.Resolved?
    
    @State var selectedPriority: String = "star"

    @State var priority: Int = 0
    
    @Binding var addViewZIndex: CGFloat
    
    @Environment(\.self) var environment
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Todo 추가하기")
            ZStack(alignment: .topLeading) {
                TextEditor(text: $todoText)
                    .frame(width: 280, height: 150)
                    .scrollContentBackground(.hidden)
                    .background(.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                if todoText.isEmpty {
                    Text("Todo를 입력하세요.")
                        .foregroundStyle(.gray.opacity(0.7))
                        .padding(EdgeInsets(top: 8, leading: 5, bottom: 0, trailing: 0))
                }
            }
            HStack(spacing: 40) {
                HStack {
                    Text("색상")
                    ColorPicker("colorPicker", selection: $selectedColor)
                    .frame(width: 30)
                }
                .onChange(of: selectedColor, initial: true) {
                    resolvedColor = selectedColor.resolve(in: environment)
                }
                HStack {
                    Text("중요도")
                    Menu {
                        Button(action: {
                            selectedPriority = "star"
                            priority = 0
                        }) {
                            HStack {
                                Text("보통")
                                Image(systemName: "star")
                            }
                        }
                        Button(action: {
                            selectedPriority = "star.leadinghalf.filled"
                            priority = 1
                        }) {
                            HStack {
                                Text("중요")
                                Image(systemName: "star.leadinghalf.filled")
                            }
                        }
                        Button(action: {
                            selectedPriority = "star.fill"
                            priority = 2
                        }) {
                            HStack {
                                Text("매우 중요")
                                Image(systemName: "star.fill")
                            }
                        }
                    }
                label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 45, height: 30)
                            .foregroundStyle(.white)
                            .shadow(radius: 1)
                        Image(systemName: selectedPriority)
                    }
                    
                }
                }
            }
            HStack {
                Button(action: {
                    addViewZIndex = -1
                    todoText = ""
                }) {
                    Text("취소")
                }
                .frame(width: 65, height: 35)
                .background(.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                Button(action: {
                    addViewZIndex = -1
                    print("선택한 칼라")
                    print(resolvedColor?.red)
                    todoVM.addTodo(text: todoText, date: Date(), color: "\(resolvedColor!.red) \(resolvedColor!.green) \(resolvedColor!.blue) \(resolvedColor!.opacity)", modelContext: modelContext, priority: priority)
                    todoText = ""
                }) {
                    Text("확인")
                }
                .frame(width: 65, height: 35)
                .background(.yellow)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .disabled(todoText.isEmpty ? true : false)
            }
        }
        .frame(width: 300, height: 350)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(radius: 10, x: 7, y: 7)
    }
}

#Preview {
    AddTodoView(selectedColor: .blue, addViewZIndex: .constant(0.0))
}
