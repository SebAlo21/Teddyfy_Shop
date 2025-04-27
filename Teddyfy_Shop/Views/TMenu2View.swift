//
//  TMenu2View.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 26/04/25.
//

import SwiftUI

struct TMenu2View: View {
    var body: some View {
        ZStack{
            Color("user_C_Orange")
                .edgesIgnoringSafeArea(.all)
            VStack(){
                HStack(){
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40)
                    
                    Spacer()
                    
                    HStack(spacing: 10){
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                        Image(systemName: "bell")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30)
                    }
                    
                }.padding(.horizontal,30)
                    .padding(.vertical,5)
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.black)
                    .opacity(0.5)
                    .padding(.horizontal,20)
                
                ScrollView{
                    VStack(){
                        
                        
                        
                    }
                }
            }
            
        }
    }
}

#Preview {
    TMenu2View()
}
