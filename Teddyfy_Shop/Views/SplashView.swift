//
//  SplashView.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 24/04/25.
//

import SwiftUI

struct SplashView: View {
    @State private var nextView:Bool = false
    var body: some View {
        
        if nextView{
            TStartView()
        }else{
            ZStack{
                Color("user_C_Orange")
                    .edgesIgnoringSafeArea(.all)
                RoundedRectangle(cornerRadius: 24)
                    .foregroundStyle(Color("user_C_White"))
                    .frame(width: 100,height: 100)
                    .overlay{
                        Image(systemName: "photo")
                            .resizable().scaledToFit()
                            .frame(width: 60)
                            .onTapGesture {
                                withAnimation{
                                    nextView = true
                                }
                            }
                            //.onAppear{
                               // DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                                   // nextView = true
                                //}
                            //}
                    }
            }
        }
    }
}

#Preview {
    SplashView()
}
