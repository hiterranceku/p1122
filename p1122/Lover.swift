//
//  Lover.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import Foundation

struct Lover: Identifiable, Codable {
    var id = UUID()
    var name: String
    var weight: Int
    var trueHeart: Bool
}


