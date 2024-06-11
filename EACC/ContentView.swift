//
//  ContentView.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            TabView{
                CookieView()
                    .tabItem {
                        Label("Home", systemImage: "house.lodge.fill")
                    }
                MarketView()
                    .tabItem {
                        Label("Marketplace", systemImage: "storefront.fill")
                    }
                StatsView()
                    .tabItem {
                        Label("Stats", systemImage: "list.clipboard.fill")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape.fill")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
}
