//
//  SleepHour.swift
//  capstone_immune
//
//  Created by 박민정 on 2023/05/30.
//

import Foundation
import SwiftUI

//예제 모델 데이터
struct SleepHour: Identifiable{
    var id = UUID().uuidString
    var day : String
    var hour: Double
    var animate: Bool = false
}


var sample_analytics: [SleepHour] = [
    SleepHour(day:"월", hour: 7),
    SleepHour(day:"화", hour: 10),
    SleepHour(day:"수", hour: 8),
    SleepHour(day:"목", hour: 6),
    SleepHour(day:"금", hour: 9),
    SleepHour(day:"토", hour: 11),
    SleepHour(day:"일", hour: 5)
]
