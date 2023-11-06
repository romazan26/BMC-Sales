//
//  ContentView.swift
//  BMC Sales
//
//  Created by Роман on 06.11.2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Properties
    @State private var findText = ""
    
    //MARK: - Body
    var body: some View {
        VStack {
            //MARK: - Menu
            ZStack{
                Color("LaunchColor")
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "lineweight")
                            .foregroundColor(.white)
                            .font(.title)
                    })
                    Spacer()
                    Text("BMC Sales").font(.largeTitle).foregroundStyle(.white)
                    Spacer()
                }.padding()
            }.frame(width: 400, height: 60)
            
            //MARK: - Find
            HStack{
                TextField("Поиск товара", text: $findText)
                    .textFieldStyle(.roundedBorder)
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                })
                Button(action: {}, label: {
                    Image(systemName: "qrcode")
                })
            }.padding(.vertical)
            
            //MARK: - ActionButtonMenu
            NavigationStack {
                HStack(spacing: 10) {
                    VStack(spacing: 60){
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Каталог товаров", imageNme: "suitcase.fill")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "UPI-карта визитка", imageNme: "creditcard")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Ваша корзина", imageNme: "cart.fill")
                        }
                    }
                    VStack(spacing: 60){
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Дисан. обучение", imageNme: "graduationcap.fill")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Онлайн игры", imageNme: "gamecontroller.fill")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Ваши клиенты", imageNme: "person.3.fill")
                        }
                    }
                    VStack(spacing: 60){
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Онлайн карта", imageNme: "map")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Ежедневн. бонус", imageNme: "gift.fill")
                        }
                        NavigationLink {CatalogView()} label: {
                            CatalogButtonView(name: "Ваши сайты", imageNme: "desktopcomputer")
                        }
                    }
                }
                .frame(width: 400, height: 600)
                .background(Color(.gray).opacity(0.1))
                
            }
            
            Spacer()
        }.padding()
        
    }
}

//MARK: - Preview
#Preview {
    ContentView()
}

struct CatalogButtonView: View {
    var name = ""
    var imageNme = ""
    var body: some View {
        VStack{
            Image(systemName: imageNme)
                .resizable()
                .foregroundColor(.black)
                .frame(width: 70, height: 50)
            Text(name)
                .frame(width: 80)
                .font(.callout)
                .foregroundStyle(.black)
        }
        .padding(10)
        .background(Color(.white).shadow(color: .gray, radius: 5))
        
    }
}
