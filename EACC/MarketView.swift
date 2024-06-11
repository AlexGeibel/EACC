//
//  MarketView.swift
//  EACC
//
//  Created by Alex Geibel on 5/30/24.
//

import Foundation
import SwiftUI

struct MarketView: View {
    @EnvironmentObject var vm: ViewModel
    @State private var timer: Timer?
    @State var clicks: Int = 1
    @State var cursorCost: Int = 37
    @State var sugarCost: Int = 100
    @State var mmCost: Int = 500
    @State var oreoCost: Int = 2000
    @State var goldCost: Int = 10000
    @State var cmCost: Int = 50000
    var body: some View {
        VStack {
            Text("Welcome to the Marketplace!")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("You have \(vm.count) cookies")
                .fontWeight(.bold)
            Spacer()
            HStack{
                Text("Level \(vm.cursorLevel)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Button(action: {
                    if vm.count >= cursorCost {
                        if clicks > 1 {
                            vm.count = vm.count - cursorCost
                            vm.cookiepersec = vm.cookiepersec * 2
                            clicks += 1
                            cursorCost = cursorCost * 2
                            vm.cursorLevel += 1
                            vm.upgradesBought += 1
                        } else {
                            vm.cookiepersec = 1
                            startCounting()
                            vm.count = vm.count - cursorCost
                            clicks += 1
                            cursorCost = cursorCost * 2
                            vm.cursorLevel += 1
                            vm.upgradesBought += 1
                        }
                        if vm.upgradesPurchased == "" {
                            vm.upgradesPurchased.append("Cursor Level \(vm.cursorLevel) ")
                        } else {
                            vm.upgradesPurchased.append("| Cursor Level \(vm.cursorLevel) ")
                        }                    } else {
                        // This is for the console so that we can test
                        print("You do not have cookies")
                    }
                }, label: {
                    HStack{
                        Image(systemName: "location.fill")
                            .font(.system(size: 40))
                        VStack{
                            Text("Cursor")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            Text("\(cursorCost) Cookies")
                                .offset(x: -5)
                        }
                        .offset(x: -7)
                    }
                    .frame(width: 160, height: 70)
                    
                    
                })
            }
            Spacer()
                .frame(height: 50)
            Text("Upgrade your Cookie")
                .font(.title2)
                .fontWeight(.semibold)
                ScrollView(.horizontal){
                    HStack{
                    VStack{
                        Button(action: {
                            vm.cookieType = "choc"
                            vm.clickpersec = 1
                        }, label: {
                            Image("choc")
                                .resizable()
                            .frame(width: 100, height: 100)            })
                        Text("Chocolate Chip")
                        Text("Cost: 0")
                        Text("1 Per Click")
                    }
                    VStack{
                        Button(action: {
                            if vm.unlock1 == false {
                                if vm.count >= 100 {
                                    vm.cookieType = "sugar"
                                    vm.count -= 100
                                    vm.clickpersec = 5
                                    vm.unlock1 = true
                                    sugarCost = 0
                                    vm.upgradesBought += 1
                                    if vm.upgradesPurchased == "" {
                                        vm.upgradesPurchased.append("Sugar Cookie ")
                                    } else {
                                        vm.upgradesPurchased.append("| Sugar Cookie ")
                                    }
                                } else {
                                    print("you cant afford dis cookie")
                                }
                            } else {
                                vm.cookieType = "sugar"
                                vm.clickpersec = 5
                            }
                            }, label: {
                            Image("sugar")
                                .resizable()
                            .frame(width: 100, height: 100)            })
                        Text("Sugar Cookie")
                        Text("Cost: \(sugarCost)")
                        Text("5 Per Click")
                    }
                        VStack{
                            Button(action: {
                                if vm.unlock2 == false {
                                    if vm.count >= 500 {
                                        vm.cookieType = "mm"
                                        vm.count -= 500
                                        vm.clickpersec = 10
                                        vm.unlock2 = true
                                        mmCost = 0
                                        vm.upgradesBought += 1
                                        if vm.upgradesPurchased == "" {
                                            vm.upgradesPurchased.append("M&M Cookie ")
                                        } else {
                                            vm.upgradesPurchased.append("| M&M Cookie ")
                                        }
                                    } else {
                                        print("you cant afford dis cookie")
                                    }
                                }else {
                                    vm.cookieType = "mm"
                                    vm.clickpersec = 10
                                }
                            }, label: {
                                Image("mm")
                                    .resizable()
                                .frame(width: 100, height: 100)            })
                            Text("M&M Cookie")
                            Text("Cost: 500")
                            Text("10 Per Click")
                        }
                        VStack{
                            Button(action: {
                                if vm.unlock3 == false {
                                    if vm.count >= 2000 {
                                        vm.cookieType = "oreo"
                                        vm.count -= 2000
                                        vm.clickpersec = 40
                                        vm.unlock3 = true
                                        oreoCost = 0
                                        vm.upgradesBought += 1
                                        if vm.upgradesPurchased == "" {
                                            vm.upgradesPurchased.append("Oreo Cookie ")
                                        } else {
                                            vm.upgradesPurchased.append("| Oreo Cookie ")
                                        }
                                    } else {
                                        print("you cant afford dis cookie")
                                    }
                                } else {
                                    vm.cookieType = "oreo"
                                    vm.clickpersec = 40
                                }
                            }, label: {
                                Image("oreo")
                                    .resizable()
                                .frame(width: 100, height: 100)            })
                            Text("Oreo")
                            Text("Cost: 2,000")
                            Text("40 Per Click")
                        }
                        VStack{
                            Button(action: {
                                if vm.unlock4 == false {
                                    if vm.count >= 10000 {
                                        vm.cookieType = "goldoreo"
                                        vm.count -= 10000
                                        vm.clickpersec = 200
                                        vm.unlock4 = true
                                        goldCost = 0
                                        vm.upgradesBought += 1
                                        if vm.upgradesPurchased == "" {
                                            vm.upgradesPurchased.append("Gold Oreo ")
                                        } else {
                                            vm.upgradesPurchased.append("| Gold Oreo ")
                                        }
                                    } else {
                                        print("you cant afford dis cookie")
                                    }
                                } else {
                                    vm.cookieType = "goldoreo"
                                    vm.clickpersec = 200
                                }
                            }, label: {
                                Image("goldoreo")
                                    .resizable()
                                .frame(width: 100, height: 100)            })
                            Text("Golden Oreo")
                            Text("Cost: 10,000")
                            Text("200 Per Click")
                        }
                        VStack{
                            Button(action: {
                                if vm.unlock5 == false {
                                    if vm.count >= 50000 {
                                        vm.cookieType = "cookiemonster"
                                        vm.count -= 50000
                                        vm.clickpersec = 1000
                                        vm.unlock5 = true
                                        cmCost = 0
                                        vm.upgradesBought += 1
                                        if vm.upgradesPurchased == "" {
                                            vm.upgradesPurchased.append("Cookie Monster Cookie ")
                                        } else {
                                            vm.upgradesPurchased.append("| Cookie Monster Cookie ")
                                        }
                                    } else {
                                        print("you cant afford dis cookie")
                                    }
                                } else {
                                    vm.cookieType = "cookiemonster"
                                    vm.clickpersec = 1000
                                }
                            }, label: {
                                Image("cookiemonster")
                                    .resizable()
                                .frame(width: 100, height: 100)            })
                            Text("Cookie Monster")
                            Text("Cost: 50,000")
                            Text("1000 Per Click")
                        }
                        
                        
                }
            }
            .fontWeight(.semibold)
            Spacer()
        }
        
        .padding()
    }
    func startCounting()
    {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            vm.count += vm.cookiepersec
        }
    }
}

#Preview {
    MarketView()
        .environmentObject(ViewModel())
}
