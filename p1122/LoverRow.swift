//
//  LoverRow.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct LoverRow: View {
    
    var lover: Lover

    var body: some View {
        HStack {
            Text(lover.name)
            Spacer()
            Text("\(lover.weight) 元")
            Image(systemName: lover.trueHeart ? "checkmark.seal.fill" : "checkmark.seal")
            .foregroundColor(.green)
        }
        
    }
}

struct LoverRow_Previews: PreviewProvider {
    static var previews: some View {
        LoverRow(lover: Lover(name: "penny", weight: 30, trueHeart: true))
    }
}

