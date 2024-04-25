//
//  MemoAddView.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import SwiftUI

struct MemoAddView: View {
    
    @EnvironmentObject var memoVM: MemoViewModel
    
    @State private var memoText: String = ""
    @State private var selectedColor: String = ""
    @State private var clickedColor: Color = .white
    
    @Binding var isSheetShow: Bool
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack {
            clickedColor.ignoresSafeArea()
            VStack {
                HStack {
                    Button(action: {
                        isSheetShow = false
                        memoText = ""
                    }) {
                        Text("취소")
                    }
                    Spacer()
                    Button(action: {
                        isSheetShow = false
                        memoVM.addMemo(text: memoText, createDate: Date(), color: selectedColor, modelContext: modelContext)
                        memoText = ""
                    }) {
                        Text("완료")
                    }
                    .disabled(memoText.count > 0 ? false : true)
                }
                Spacer()
                VStack {
                    TextField("메모를 입력하세요.", text: $memoText)
                        .textFieldStyle(.roundedBorder)
                    HStack(spacing: 20) {
                        ForEach(memoVM.colors, id: \.self) { color in
                            Button(action: {
                                clickedColor = color
                                switch color {
                                case .blue:
                                    selectedColor = "blue"
                                case .cyan:
                                    selectedColor = "cyan"
                                case .purple:
                                    selectedColor = "purple"
                                case .yellow:
                                    selectedColor = "yellow"
                                case .indigo:
                                    selectedColor = "indigo"
                                default:
                                    selectedColor = "gray"
                                }
                            }) {
                                Circle()
                                    .stroke(.black, lineWidth: 2)
                                    .fill(color)
                                    .frame(width: 40)
                            }
                        }
                    }
                    .padding(.vertical, 30)
                }
                .padding()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    MemoAddView(isSheetShow: .constant(false))
        .environmentObject(MemoViewModel())
}
