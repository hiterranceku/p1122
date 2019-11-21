//
//  LoverEditor.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct LoverEditor: View {
    @Environment(\.presentationMode) var presentationMode
    var loversData: LoversData
    @State private var name = ""
    @State private var weight = 0
    @State private var trueHeart = false
    @State private var showSecondPage = false
    @State private var showThirdPage = false
    var editLover: Lover?
    
    
    var body: some View {
        Form {
            TextField("項目名稱", text: $name)
            Stepper("價格 \(weight) 元", value: $weight, in: 0...100)
            Toggle("重要", isOn: $trueHeart)
            Button("營養管理") {
            self.showSecondPage = true
            }
            .sheet(isPresented: self.$showSecondPage) {
            ContentView()
            }
            Button("肌肉脂肪比例") {
            self.showThirdPage = true
            }
            .sheet(isPresented: self.$showThirdPage) {
            muscle()
            }
        }
        .navigationBarTitle(editLover == nil ? "新增項目" : "編輯項目")
        .navigationBarItems(trailing: Button("保存") {
            let lover = Lover(name: self.name, weight: self.weight, trueHeart: self.trueHeart)
            if let editLover = self.editLover {
                let index = self.loversData.lovers.firstIndex {
                    $0.id == editLover.id
                    }!
                self.loversData.lovers[index] = lover
            } else {
                self.loversData.lovers.insert(lover, at: 0)
            }
            self.presentationMode.wrappedValue.dismiss()
            
        })
            .onAppear {
                if let editLover = self.editLover {
                    self.name = editLover.name
                    self.weight = editLover.weight
                    self.trueHeart = editLover.trueHeart
                    
                }
        }
        
    }
    
}

struct LoverEditor_Previews: PreviewProvider {
    static var previews: some View {
        LoverEditor(loversData: LoversData())
    }
}
