//
//  StatsView.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import Foundation
import SwiftUI

struct StatsView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
            Text("User Stats")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
            Text("All Time")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Upgrades Bought | \(vm.upgradesBought)")
            Text("Cookie Upgrades")
                .font(.title)
                .fontWeight(.bold)
                .padding()  
            HStack{
                Text("Type of Cookie")
                Text("-")
                Text("Is Unlocked")
            }
            HStack{
                Text("Sugar Cookie")
                Text("-")
                Text("\(vm.unlock1)")
                    .foregroundColor(vm.unlock1 ? .green : .red)
            }
            .padding(1)
            HStack{
                Text("M&M Cookie")
                Text("-")
                Text("\(vm.unlock2)")
                    .foregroundColor(vm.unlock2 ? .green : .red)
            }
            .padding(1)
            HStack{
                Text("Oreo")
                Text("-")
                Text("\(vm.unlock3)")
                    .foregroundColor(vm.unlock3 ? .green : .red)
            }
            .padding(1)
            HStack{
                Text("Golden Oreo")
                Text("-")
                Text("\(vm.unlock4)")
                    .foregroundColor(vm.unlock4 ? .green : .red)
            }
            .padding(1)
            HStack{
                Text("Cookie Monster")
                Text("-")
                Text("\(vm.unlock5)")
                    .foregroundColor(vm.unlock5 ? .green : .red)
            }
            .padding(1)
//            Text("\(vm.upgradesPurchased)")
            Spacer()
            Spacer()
        }
        .padding()
        .fontWeight(.bold)
    }
}

#Preview {
    StatsView()
        .environmentObject(ViewModel())
}
