//
//  ContentView.swift
//  Calculator
//
//  Created by 김형준 on 4/18/24.
//

import SwiftUI



struct ContentView: View {
    
    @State private var Result = "0"
    @State private var num2 = 0
    @State private var num3 = 0
    @State private var num4 = 0
    @State private var num5 = 0
    @State private var num6 = 0
    @State private var num7 = 0
    @State private var num8 = 0
    @State private var num9 = 0
    @State private var num10 = 0
    var elements = [".", "0", "C"]
    
    var body: some View {
        VStack {
            Text(Result)
                .font(.largeTitle)
            HStack{
                ForEach(7..<10) { num in
                    Button(action: {
                        self.Result.append("\(num)")
                    }, label: {
                        Text("\(num)")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                        
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .bold() }
                Button(action: { self.Result.append("/") }) {
                                    Text("/")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
            }
            HStack{
                ForEach(4..<7) { num in
                    Button(action: {
                        self.Result.append("\(num)")
                    }, label: {
                        Text("\(num)")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                        
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .bold() }
                Button(action: { self.Result.append("*") }) {
                                    Text("*")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
            }
            HStack{
                ForEach(1..<4) { num in
                    Button(action: {
                        self.Result.append("\(num)")
                    }, label: {
                        Text("\(num)")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                        
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .bold() }
                Button(action: { self.Result.append("-") }) {
                                    Text("-")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
            }
            HStack{
                    Button(action: {
                        self.Result.append(".")
                    }, label: {
                        Text(".")
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.black)
                        
                    })
                    .buttonStyle(BorderedButtonStyle())
                    .bold()
                Button(action: {
                    self.Result.append("0")
                }, label: {
                    Text("0")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.black)
                    
                })
                .buttonStyle(BorderedButtonStyle())
                .bold()
                Button(action: {
                    self.Result = ""
                }, label: {
                    Text("C")
                        .font(.largeTitle)
                        .frame(width: 50, height: 50)
                        .foregroundColor(.red)
                    
                })
                .buttonStyle(BorderedButtonStyle())
                .bold()
                Button(action: { self.Result.append("+") }) {
                                    Text("+")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.white)
                                        .background(Color.orange)
                                        .cornerRadius(10)
                                }
            }
            
            
            
            
            Button(action: {
                
            }, label: {
                Text("=")
                    .font(.largeTitle)
                    .frame(width: 250, height: 50)
                    .foregroundColor(.black)
                
            })
            .buttonStyle(BorderedButtonStyle())
            .bold()
            
            
            
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
