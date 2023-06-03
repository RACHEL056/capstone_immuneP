//
//  avatar.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/06/02.
//

import SwiftUI

struct avatar: View {
    @ObservedObject var userInfo: UserInfo
    @State private var isShowingImage1 = true
    @State private var isShowingImage2 = true
    @State var isAnimation = false
    @State private var value = true
    @State private var isShaking = false
    
    var body: some View {
        
//        func startAnimation() {
//            withAnimation {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    isShowingImage1.toggle()
//                    startAnimation()
//                    }
//                }
//            }
//
//        func startAnimation2() {
//            withAnimation {
//                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                    isShowingImage2.toggle()
//                    startAnimation2()
//                    }
//                }
//            }
//
//        func startShakeAnimation(){
//            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
//                withAnimation(Animation.spring(response: 0.2, dampingFraction: 3, blendDuration: 0.2)) {
//                    isShaking.toggle()
//                }
//            }
//        }
        
        ZStack{
            //boundary 구현
            if userInfo.immunityLevel == "Strong"{
                Circle()
                    .fill(Color.orange.opacity(0.25))
                    .frame(width:400, height:400)
                    .scaleEffect(isAnimation ? 0.95 : 1)
                    .animation(Animation.easeInOut(duration:1).repeatForever(), value: value)
            } else if userInfo.immunityLevel == "Moderate"{
                Circle()
                    .fill(Color.orange.opacity(0.25))
                    .frame(width:300, height:300)
                    .scaleEffect(isAnimation ? 0.95 : 1)
                    .animation(Animation.easeInOut(duration:1).repeatForever(), value: value)
            }else{
                Circle()
                    .fill(Color.orange.opacity(0.25))
                    .frame(width:200, height:200)
                    .scaleEffect(isAnimation ? 0.95 : 1)
                    .animation(Animation.easeInOut(duration:1).repeatForever(), value: value)
            }
            if userInfo.genderindex == 0{
                Image("male")
            }else{
                //여자 아바타
                Image("hair")
                VStack{
                    Image("armL")
                        .rotationEffect(Angle(degrees: isShaking ? 10 : 0))
    //                    .offset(x:5,y:3)
                }
                .onAppear{
                    startShakeAnimation()
                }
                Image("body3")
                VStack{
                    Image("armR")
                        .rotationEffect(Angle(degrees: isShaking ? -10 : 0))
                }
                VStack{
                    if isShowingImage1 {
                        Image("eyeL")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else {
                        Image("eyeLclose")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .animation(.easeInOut(duration: 1))
                .onAppear {
                    startAnimation()
                }
                VStack{
                    if isShowingImage2{
                        Image("eyeR")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } else{
                        Image("eyeRclose")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .animation(.easeInOut(duration:1))
                .onAppear{
                    startAnimation2()
                }
                Image("mouth")
            }
        }
        .onAppear(){
            withAnimation(.linear(duration:1)){
                self.isAnimation.toggle()
                value = false
            }
        }
    }
    func startAnimation() {
        withAnimation {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isShowingImage1.toggle()
                startAnimation()
                }
            }
        }
            
    func startAnimation2() {
        withAnimation {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                isShowingImage2.toggle()
                startAnimation2()
                }
            }
        }
    
    func startShakeAnimation(){
        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            withAnimation(Animation.spring(response: 0.2, dampingFraction: 3, blendDuration: 0.2)) {
                isShaking.toggle()
            }
        }
    }
}

//struct avatar_Previews: PreviewProvider {
//    static var previews: some View {
//        avatar()
//    }
//}
