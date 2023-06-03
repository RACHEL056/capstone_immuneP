//
//  ContentView.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/30.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @ObservedObject var userInfo: UserInfo
    @State var isContentReady : Bool = false
    @AppStorage("_isFirstLaunching") var isFirstLaunching : Bool = true
    
    var body: some View {
        TabView{
            MainView(userInfo: userInfo)
                .tabItem {
                    Image(systemName: "checkmark.seal")
                    Text("Main")
                }
            avatar(userInfo: userInfo)
                .tabItem({
                    Image(systemName: "person")
                    Text("아바타")
                })
            Setting(userInfo: userInfo)
                .tabItem({
                    Text("설정")
                })
        }
    }
}
