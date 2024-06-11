//
//  SettingsView.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
            Text("Settings")
                .offset(y: -300)
            TextField("Enter Name", text: $vm.bakeryName)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200)
                .multilineTextAlignment(.center
                )
            Button(action: {
                
            }, label: {
                Text("Reset Data")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
            })
        }
        .padding()
    }
}

#Preview {
    SettingsView()
        .environmentObject(ViewModel())
}
