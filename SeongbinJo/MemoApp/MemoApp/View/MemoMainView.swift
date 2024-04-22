//
//  MemoMainView.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import SwiftUI
import SwiftData

struct MemoMainView: View {
    
    @EnvironmentObject var memoVM: MemoViewModel
    
    @State var isSheetShow: Bool = false
    
    @Query var memos: [Memo]
    @Environment(\.modelContext) var modelContext
    
    let redColor: Color = Color.red
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                VStack {
                    Rectangle()
                        .frame(height: 0.4)
                        .opacity(0.2)
                    ForEach(memos) { memo in
                        VStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.17)
                                .foregroundColor(memoVM.memoColor(color: memo.color))
                                .overlay(alignment: .leading) {
                                    VStack(alignment: .leading) {
                                        HStack {
                                            Text(memo.text)
                                                .font(.largeTitle)
                                            Spacer()
                                            Button(action: {
                                                memoVM.removeMemo(targetMemo: memo, modelContext: modelContext)
                                            }) {
                                                Image(systemName: "trash")
                                            }
                                        }
                                        Spacer()
                                        Text(memo.createdDateString)
                                    }
                                    .padding()
                                }
                            Rectangle()
                                .frame(height: 0.4)
                                .opacity(0.2)
                        }
                    }
                    Spacer()
                }
                .navigationTitle("Bin's Memo")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            // 추가 액션
                            isSheetShow = true
                        }) {
                            Text("추가")
                        }
                    }
                }
                .sheet(isPresented: $isSheetShow) {
                    MemoAddView(isSheetShow: $isSheetShow)
                }
            }
        }
        .onAppear {
            print(redColor)
        }
    }
}

#Preview {
    MemoMainView()
        .environmentObject(MemoViewModel())
}
