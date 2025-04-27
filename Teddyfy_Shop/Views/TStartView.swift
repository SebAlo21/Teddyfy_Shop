//
//  TStartView.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 24/04/25.
//

import SwiftUI

struct TStartView: View {
    @State private var nextView = false
    var body: some View {
        if nextView{
            TLoginView()
        }else{
            ZStack{
                Color("user_C_Orange")
                    .edgesIgnoringSafeArea(.all)
                VStack(){
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                    
                    VStack(alignment: .leading){
                        Text("Bienvenido ...")
                            .font(.system(size:40))
                            .fontWeight(.black)
                
                        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. ")
                            
                    }.padding()
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundStyle(Color("user_C_Pink"))
                        .frame(width:300,height: 80)
                        .overlay{
                            HStack(){
                                Circle()
                                    .foregroundStyle(Color("user_C_White"))
                                    .frame(height:70).overlay{
                                        Image(systemName: "play.fill")
                                            .renderingMode(.template)
                                            .resizable().scaledToFit()
                                            .foregroundStyle(Color("user_C_Black"))
                                            .frame(width:30).onTapGesture {
                                                withAnimation{
                                                    nextView = true
                                                }
                                            }
                                    }
                                Spacer()
                                
                            }.padding(.horizontal,10)
                            
                        }
                    
                    
                    
                    
                }
                .padding(.top,150)
                
                
            }
            
        }
        
    }
}

#Preview {
    TStartView()
}
