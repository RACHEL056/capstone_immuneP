//
//  capstone_immuneApp.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/29.
//

import SwiftUI

@main
struct capstone_immuneApp: App {
    @StateObject private var userInfo = UserInfo()
    
    var body: some Scene {
        WindowGroup {
            Group{
                if userInfo.isLoading{
                    LoadingView()
                }else if userInfo.isEnteringPersonalInfo{
                    PersonalInfoView(userInfo:userInfo)
                }else{
                    ContentView(userInfo: userInfo)
                }
            }
        }
    }
}
