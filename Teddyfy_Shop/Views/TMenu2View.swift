//
//  TMenu2View.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 26/04/25.
//

import SwiftUI

struct TMenu2View: View {
    let items = Array(1...4)
    let rows = [
        GridItem(.flexible())
    ]
    
    let items2 = Array(1...4)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let items3 = Array(1...6)
    let columns3 = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView(){
        ZStack{
            Color("user_C_Orange")
                .edgesIgnoringSafeArea(.all)
            //MAin Content
            
                VStack(){
                    HStack(){
                        
                        Image(systemName: "person.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40)
                        
                        Spacer()
                        
                        HStack(alignment: .bottom,spacing: 10){
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20)
                            Image(systemName: "bell")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20)
                            
                            NavigationLink(destination:Text("TInfoView")){
                                Image(systemName: "info.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20)
                            }
                            
                            
                            
                            
                        }
                    }.padding(.horizontal,30)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.black)
                        .opacity(0.5)
                        .padding(.horizontal,20)
                    
                    ScrollView{
                        VStack(){
                            HStack(alignment: .bottom){
                                Text("Tutorial de personalizacion...")
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal,30)
                            ZStack(){
                                RoundedRectangle(cornerRadius: 16)
                                    .frame(width:.infinity,height: 100)
                                    .overlay{
                                        HStack(){
                                            Image(systemName: "figure.wave")
                                                .renderingMode(.template)
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundStyle(Color("user_C_White"))
                                                .frame(width:30)
                                            VStack(alignment: .leading){
                                                Text("Te ayudamos...")
                                                    .font(.title3)
                                                    .bold()
                                                Text("Lorem impsum dolor ")
                                                    .font(.system(size: 15))
                                            }.foregroundStyle(Color("user_C_White"))
                                                .padding(.horizontal,10)
                                            Spacer()
                                            Image(systemName: "arrowshape.turn.up.right")
                                                .renderingMode(.template)
                                                .resizable()
                                                .scaledToFit()
                                                .foregroundStyle(Color("user_C_White"))
                                                .frame(width:30)
                                            
                                        }.padding(.horizontal,20)
                                    }
                            }.padding(.horizontal,20)
                            HStack(alignment: .bottom){
                                Text("Proximos Eventos...")
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack(){
                                LazyHGrid(rows: rows,spacing:2){
                                    ForEach(items,id: \.self){
                                        item in
                                        RoundedRectangle(cornerRadius:16)
                                            .frame(width:70, height: 30)
                                            .overlay{
                                                Text("Evento")
                                                    .foregroundStyle(Color("user_C_White"))
                                            }
                                        Spacer()
                                        
                                    }
                                }
                            }
                            HStack(alignment: .bottom){
                                Text("Nuevos...")
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal,30)
                            HStack(){
                                LazyVGrid(columns: columns,spacing: 5){
                                    ForEach(items2,id: \.self){
                                        item in
                                        RoundedRectangle(cornerRadius: 16)
                                            .frame(width: 180,height: 100)
                                            .overlay{
                                                Text("Nuevo Item").foregroundStyle(Color("user_C_White"))
                                            }
                                    }
                                }
                            }.padding(.horizontal,20)
                            
                            HStack(alignment: .bottom){
                                Text("Inspirate...")
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }.padding(.horizontal,30)
                            
                            HStack(){
                                LazyVGrid(columns: columns,spacing: 5){
                                    ForEach(items3,id: \.self){
                                        item in
                                        RoundedRectangle(cornerRadius: 16)
                                            .frame(width: 180,height: 100)
                                            .overlay{
                                                Text("Nuevo Item").foregroundStyle(Color("user_C_White"))
                                            }
                                    }
                                }
                            }.padding(.horizontal,20)
                          
                        }
                    }
                }
                
            }
        }
        
    }
}

#Preview {
    TMenu2View()
}
