//
//  LoverList.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct LoverList: View {
    
    @ObservedObject var loversData = LoversData()
    @State private var showEditLover = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(loversData.lovers) { (lover) in
                    NavigationLink(destination: LoverEditor(loversData: self.loversData, editLover: lover)) {
                        LoverRow(lover: lover)
                        
                    }
                }
                .onDelete { (indexSet) in
                    self.loversData.lovers.remove(atOffsets: indexSet)
                }
            }
            .navigationBarTitle("購買清單")
            .navigationBarItems(leading: EditButton() ,trailing: Button(action: {
                
                self.showEditLover = true
                
            }, label: {
                Image(systemName: "plus.circle.fill")
                
            }))
            
                .sheet(isPresented: $showEditLover) {
                    NavigationView {
                         LoverEditor(loversData: self.loversData)
                    }
                   
            }
        }
    }
}

struct LoverList_Previews: PreviewProvider {
    static var previews: some View {
        LoverList()
    }
}
