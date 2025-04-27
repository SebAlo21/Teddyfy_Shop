//
//  TMenuView.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 26/04/25.
//

import SwiftUI

struct TMenuView: View {
    @State private var username:String = "anonimo";
    let items = Array(1...10)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        ZStack{
            Color("user_C_Orange")
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                
                
                VStack(){
                    ZStack(){
                        Image(systemName: "photo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400,height: 300)
                    }.padding(.horizontal,20)
                        .shadow(radius: 10)
                    
                    HStack{
                        Text("Eventos")
                            .foregroundStyle(Color("user_C_White"))
                            .font(.system(size: 32))
                            .bold()
                        Spacer()
                    }.padding(.horizontal,40)
                    //slider de Eventos
                    HStack(spacing:20){
                        //Logo de Evento
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("user_C_Orange"))
                                .frame(width: 60)
                            Circle()
                                .foregroundStyle(Color("user_C_Pink"))
                                .frame(width: 50)
                        }
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("user_C_Orange"))
                                .frame(width: 60)
                            Circle()
                                .foregroundStyle(Color("user_C_Pink"))
                                .frame(width: 50)
                        }
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("user_C_Orange"))
                                .frame(width: 60)
                            Circle()
                                .foregroundStyle(Color("user_C_Pink"))
                                .frame(width: 50)
                        }
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("user_C_Orange"))
                                .frame(width: 60)
                            Circle()
                                .foregroundStyle(Color("user_C_Pink"))
                                .frame(width: 50)
                        }
                        ZStack{
                            Circle()
                                .foregroundStyle(Color("user_C_Orange"))
                                .frame(width: 60)
                            Circle()
                                .foregroundStyle(Color("user_C_Pink"))
                                .frame(width: 50)
                        }
                    }.frame(width:400,height: 80)
                        .background(Color("user_C_White"))
                    
                    HStack{
                        Text("Inspirate")
                            .foregroundStyle(Color("user_C_White"))
                            .font(.system(size: 32))
                            .bold()
                        Spacer()
                    }.padding(.horizontal,40)
                    
                    
                    
                    LazyVGrid(columns: columns, spacing: 10){
                        ForEach(items,id: \.self){
                            item in
                            RoundedRectangle(cornerRadius: 16)
                                .foregroundStyle(Color("user_C_White"))
                                .frame(width: 180, height: 180)
                                .overlay{
                                    Text("Item")
                                        .font(.title)
                                }
                                .shadow(radius: 5)
                        }
                    }.padding(.horizontal,30)
                    
                    
                    
                }
                
            }
        }
    }
        
}


#Preview {
    TMenuView()
}
