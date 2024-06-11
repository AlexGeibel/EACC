//
//  CookieView.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import Foundation
import SwiftUI

struct CookieView: View {
    @EnvironmentObject var vm: ViewModel
    @State var counter = 0
    @State var multiplier = 0
    var body: some View {
        VStack {
            Text("\(vm.bakeryName)")
                .font(.title)
                .fontWeight(.heavy)
            Spacer()
            Text("\(vm.count) cookies")
                .font(.system(size: 30))
                .fontWeight(.semibold)
            Text("\(vm.cookiepersec) cookies per second")
            Button(action: {
                vm.count += vm.clickpersec
            }, label: {
                Image("\(vm.cookieType)")
                    .resizable()
                    .frame(width: 150, height: 150)            })
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
//        .background(Color.gray)
    }
}

#Preview {
    CookieView()
        .environmentObject(ViewModel())
}
