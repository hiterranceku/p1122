//
//  ContentView.swift
//  p1122
//
//  Created by User08 on 2019/11/22.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
        Circle()
        .trim(from: 0, to: 0.3)
        .stroke(Color.yellow, lineWidth: 15)
            
        Circle()
        .trim(from: 0.3, to: 0.55)
        .stroke(Color.green, lineWidth: 15)
            
        Circle()
        .trim(from: 0.55, to: 0.65)
        .stroke(Color.pink, lineWidth: 15)
            
        Circle()
            .trim(from: 0.65, to: 0.8)
        .stroke(Color.red, lineWidth: 15)
        
        Circle()
        .trim(from: 0.8, to: 0.95)
        .stroke(Color.gray, lineWidth: 15)
            
        Circle()
        .trim(from: 0.95, to: 1)
        .stroke(Color.blue, lineWidth: 15)
            
            VStack{
                Text("營養金字塔")
                .font(.title)
                .fontWeight(.regular)
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.yellow)
                Text("穀物")}
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.green)
                    Text("蔬菜")}
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.pink)
                    Text("水果")}
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.red)
                    Text("肉類")}
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.gray)
                    Text("奶類")}
                HStack{
                Image(systemName: "hexagon.fill")
                    .foregroundColor(.blue)
                    Text("油鹽糖")}
                
            }
        }
        .frame(width: 300, height: 300)
            
        
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
