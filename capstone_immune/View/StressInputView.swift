//
//  StressInputView.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/30.
//

import SwiftUI
import Combine

class Stress: ObservableObject{
    @Published var stress_score : Int = 0
    
//    var calculateTotal : Int{
//        return stress_score
//    }
//    func calculateTotal() -> Int {
//        print(stress_score)
//        return stress_score
//    }
}

struct StressInputView: View {
    @ObservedObject var give_stress = Stress()
    @State var stressScore = 50.0
    @State var stress = 0.0
    var body: some View {
        VStack {
            Text("오늘의 스트레스 점수를 입력해주세요!")
                .font(.largeTitle)
                .bold()
                .padding(.top, 50)

            Spacer()
            Image("stress_2")
                .resizable()
                .aspectRatio(contentMode: .fit)
    
            

            HStack {
                Text("스트레스 점수:")
                    
                Text("\(Int(stressScore))")
            }
            .font(.title2)
            .padding()
            .bold()

            Slider(value: $stressScore, in: 1...100, step: 1)
                .padding()
                .accentColor(.orange)
            
            Button {
              
                self.give_stress.stress_score = Int(stressScore * 0.35)
            } label: {
                Text("입력")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(10)
            }
            .padding(.bottom,50)

            



        }
        .padding()
    }
}
//struct NextView: View {
//    var body: some View {
//        Text("다음 화면")
//            .font(.title)
//            .navigationBarTitle("다음")
//    }
//}

//struct StressInputView_Previews: PreviewProvider {
//    static var previews: some View {
//        StressInputView()
//    }
//}
