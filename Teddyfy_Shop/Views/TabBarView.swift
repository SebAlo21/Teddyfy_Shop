//
//  TabBarView.swift
//  Teddyfy_Shop
//
//  Created by Alonso on 26/04/25.
//

import SwiftUI


struct TabBarView: View {
    var body: some View {
        TabView{
            TMenuView()
                .tabItem{
                    Image(systemName: "house.fill")
                }
            Text("TNuevoView")
                .tabItem{
                    Image(systemName: "flame.fill")
                }
            Text("TPersonalizaView")
                .tabItem{
                    Image(systemName: "wand.and.rays")
                }
            Text("TComprasView")
                .tabItem{
                    Image(systemName: "bag.fill")
                }
            Text("TPerfilView")
                .tabItem{
                    Image(systemName: "person.circle")
                }
          
        }
    }
}

#Preview {
    TabBarView()
}
