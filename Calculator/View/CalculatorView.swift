//
//  CalculatorView.swift
//  Calculator
//
//  Created by 조성빈 on 4/18/24.
//

import SwiftUI

struct CalculatorView: View {
    
    @StateObject var calculateVM: CalculateViewModel
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 300)
                        .overlay(alignment: .bottomTrailing) {
                            Text("0")
                        }
                    HStack {
                        // 숫자, AC, %, .
                        VStack {
                            
                        }
                        // 나머지 기호들
                        VStack {
                            
                        }
                    }
                }
            }
        }
        .environmentObject(calculateVM)
    }
}

#Preview {
    CalculatorView(calculateVM: CalculateViewModel())
}
