//
//  LoversData.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import Foundation

class LoversData: ObservableObject {
    
    @Published var lovers = [Lover]() {
        didSet {
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(lovers) {
                UserDefaults.standard.set(data, forKey: "lovers")
            }
        }
    }
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "lovers") {
            let decoder = JSONDecoder()
            if let decodedData = try? decoder.decode([Lover].self, from: data) {
                lovers = decodedData
            }
        }
    }
    
}
