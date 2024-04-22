//
//  MemoAppApp.swift
//  MemoApp
//
//  Created by 조성빈 on 4/22/24.
//

import SwiftUI

@main
struct MemoAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Memo.self)
        }
    }
}
