//
//  MenuView.swift
//  BMC Sales
//
//  Created by Роман on 07.11.2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            MenuRowView(name: "Главная", imageName: "house.fill")
            MenuRowView(name: "Ваша торговля", imageName: "sparkles")
            MenuRowView(name: "Ваши клиенты", imageName: "sparkles")
            MenuRowView(name: "Ваши сайты", imageName: "sparkles")

            Spacer()
            HStack {
                Text("Войти")
                    .padding()
                    .background(Color.indigo)
                    .cornerRadius(10)
                Text("Регистрация")
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }.offset(x: 5 , y: -65)
        }
        .padding(25)
        .background(Color("LaunchColor"))
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    MenuView()
}

struct MenuRowView: View {
    var name = ""
    var imageName = ""
    var body: some View {
        Label(name, systemImage: imageName).foregroundStyle(.white)
        Divider()
            .frame(width: 150, height: 1)
            .background(Color.white)
    }
}
