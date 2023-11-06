//
//  LaunchScreenView.swift
//  BMC Sales
//
//  Created by Роман on 06.11.2023.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var timerTime = 0
    @State private var isPresented = false
    
    var body: some View {
        ZStack{
            Color("LaunchColor").ignoresSafeArea()
            VStack{
                Spacer()
                Image("Launch")
                    .resizable()
                    .frame(width: 400, height: 400)
                    //.position(x: 200, y: 250)
                Spacer()
                HStack(spacing: 50){
                    Text("BMC").foregroundStyle(.orange)
                    Text("Sales").foregroundStyle(.white)
                }.font(.custom("", size: 43))
                Text("Мобильное приложение")
                    .font(.title2)
                    .foregroundStyle(.mint)
                Text("kdt.rz   bmcsales.rz   agaru.rz   bmconsult.rz").foregroundStyle(.gray)
                    
            }.padding(50)
        }.onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { timer in
                if timerTime < 10 {
                    timerTime += 1
                } else {
                    timer.invalidate()
                    isPresented.toggle()
                }
            }
            
        })
        .fullScreenCover(isPresented: $isPresented, content: {
            ContentView()
        })
    }
}

#Preview {
    LaunchScreenView()
}
