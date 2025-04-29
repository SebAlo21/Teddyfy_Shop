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
            TMenu2View()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Inicio")
                }
            Text("TNuevoView")
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("Nuevos")
                }
            Text("TPersonalizaView")
                .tabItem{
                    Image(systemName: "wand.and.rays")
                    Text("Personalizar")
                }
            Text("TComprasView")
                .tabItem{
                    Image(systemName: "bag.fill")
                    Text("Carrito")
                }
            Text("TPerfilView")
                .tabItem{
                    Image(systemName: "person.circle")
                    Text("Perfil")
                }
          
        }
        
        .accentColor(Color("user_C_Black"))
        
    }
}

#Preview {
    TabBarView()
}
