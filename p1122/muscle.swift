//
//  muscle.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct muscle: View {
    var body: some View {
        ZStack {
         Path { (path) in
         path.move(to: CGPoint(x: 200, y: 330))
         path.addArc(center: CGPoint(x: 200, y: 330), radius:
        150, startAngle: .degrees(265), endAngle:.zero, clockwise: false)
         }
         .fill(Color.red)

         Path { (path) in
         path.move(to: CGPoint(x: 200, y: 330))
         path.addArc(center: CGPoint(x: 200, y: 330), radius:
        150, startAngle: .zero, endAngle:.degrees(265), clockwise: false)
         }
         .fill(Color.yellow)
            
            Text("肌肉脂肪比例約 1:3")
                .font(.headline)
                .fontWeight(.heavy)
         }
    }
}

struct muscle_Previews: PreviewProvider {
    static var previews: some View {
        muscle()
    }
}
