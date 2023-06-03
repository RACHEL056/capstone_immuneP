//
//  ExerciseView.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/30.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
            exercise_home()
        }
        .frame(maxWidth: .infinity)
        .background(){
            ZStack{
                VStack{
                    Circle()
                        .fill(Color.green)
                        .scaleEffect(0.6)
                        .offset(x:20)
                        .blur(radius: 120)
                    Circle()
                        .fill(Color.red)
                        .scaleEffect(0.6,anchor: .leading)
                        .offset(x:-20)
                        .blur(radius: 120)                }
                Rectangle().fill(.ultraThinMaterial)
            }
            
        }
        //.preferredColorScheme(.dark)
    }
}
