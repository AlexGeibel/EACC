//
//  ViewModel.swift
//  EACC
//
//  Created by Alex Geibel on 5/31/24.
//

import Foundation
import SwiftUI

class ViewModel : ObservableObject {
    @Published var count: Int = 0
    @Published var cookiepersec: Int = 0
    @Published var clickpersec: Int = 1
    @Published var cookieType: String = "choc"
    @Published var cursorLevel: Int = 0
    @Published var upgradesPurchased: String = ""
    @Published var bakeryName: String = "Shiny Click's Bakery"
    @Published var upgradesBought: Int = 0
    @Published var unlock1: Bool = false
    @Published var unlock2: Bool = false
    @Published var unlock3: Bool = false
    @Published var unlock4: Bool = false
    @Published var unlock5: Bool = false
}
