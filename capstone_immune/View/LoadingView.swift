//
//  LoadingView.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/30.
//

import Foundation
import SwiftUI

struct LoadingView: View{
    var body: some View{
        VStack {
                    Text("Loading...")
                        .font(.title)
                        .foregroundColor(.black)
                        .padding()

                    ProgressView()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .edgesIgnoringSafeArea(.all)
    }
}
