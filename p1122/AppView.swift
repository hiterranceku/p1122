//
//  AppView.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct AppView: View{
    var body: some View {
        LoverList(){
            .tabItem {
         Image(systemName: "music.house.fill")
        Text("情歌")
         }
         ContentView()
         .tabItem {
         Image(systemName: "info.circle.fill")
        Text("About")
         }
         }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
