//
//  EACCApp.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import SwiftUI

@main
struct EACCApp: App {
    @StateObject var vm: ViewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
