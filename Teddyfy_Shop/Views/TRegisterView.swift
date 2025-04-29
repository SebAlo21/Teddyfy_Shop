//
//  TRegisterView.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 26/04/25.
//

import SwiftUI

struct TRegisterView: View {
    @State private var email:String = ""
    @State private var password:String = ""
    @State private var nextView:Bool = false
    var body: some View {
        if nextView{
            TabBarView()
        }else{
            NavigationView(){
                ZStack{
                Color("user_C_Orange")
                        .edgesIgnoringSafeArea(.all)
                    VStack(){
                        VStack(alignment:.center){
                            Text("Registro")
                                .font(.system(size: 40))
                                .fontWeight(.black)
                            Text("Lorem Ipsum is simply dummy text ")
                                .foregroundStyle(Color(.gray).opacity(0.9))
                        }.padding(.horizontal)
                        
                        
                        VStack(spacing:20){
                            TextField("Ingrese su correo",text: $email)
                                //.textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                .background(Color("user_C_White"))
                                .cornerRadius(16)
                        
                            SecureField("Ingrese su contraseña",text: $password)
                                .padding()
                                .background(Color("user_C_White"))
                                .cornerRadius(16)
                        }
                        .padding(.horizontal,50)
                        .padding(.vertical,40)
                        
                        
                        
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 300,height: 60)
                                .foregroundStyle(Color("user_C_Black"))
                                .overlay{
                                    Text("Registrarme")
                                        .font(.title)
                                        .bold()
                                        .foregroundStyle(.white)
                                }
                                .onTapGesture {
                                    withAnimation{
                                        nextView = true
                                    }
                                }
                        Spacer()
                        HStack(spacing:20){
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 60,height: 60)
                                .foregroundStyle(Color("user_C_Pink"))
                                .shadow(color:Color( "user_C_White"), radius: 10)
                                .overlay{
                                    Image(systemName: "seal")
                                        .resizable().scaledToFit()
                                        .frame(width: 50)
                                }
                            
                            RoundedRectangle(cornerRadius: 16)
                                .frame(width: 60,height: 60)
                                .foregroundStyle(Color("user_C_Pink"))
                                .shadow(color:Color( "user_C_White"), radius: 10)
                                .overlay{
                                    Image(systemName: "seal")
                                        .resizable().scaledToFit()
                                        .frame(width: 50)
                                }
                            
                            
                        }.padding(.bottom,10)
                        
                        
                    }
                    .padding(.top,100)
                }
            }
        }
    }
}

#Preview {
    TRegisterView()
}
