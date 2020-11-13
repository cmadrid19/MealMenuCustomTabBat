//
//  TabBar.swift
//  MealMenuCustomTabBat
//
//  Created by Maxim Macari on 13/11/20.
//

import SwiftUI

struct TabBar: View {
    
    @State var currentTab = "house"
    @Namespace var animation
    
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $currentTab){
                
                Home(animation: animation)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[0])
                    .background(Color("background").ignoresSafeArea())
                    
                
                Text("Booking")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[1])
                    .background(Color.black.opacity(0.6).ignoresSafeArea())
                
                Text("Favourites")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[2])
                    .background(Color.black.opacity(0.6).ignoresSafeArea())
                
                Text("Settings")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[3])
                    .background(Color.black.opacity(0.6).ignoresSafeArea())
                
            }
            //Custom tab bar
            HStack(spacing: 35){
                ForEach(tabs, id: \.self){ tab in
                    TabButton(image: tab, selected: $currentTab, animation: animation)
                }
            }
            .padding(.horizontal, 30)
            .padding(.top)
            .padding(.bottom, safeArea?.bottom != 0 ? safeArea?.bottom : 15)
            .background(
                LinearGradient(gradient: .init(colors: [Color.black.opacity(0.3), Color.gray]), startPoint: .top, endPoint: .bottom)
                    .clipShape(CustomCorner(corners: [.topLeft, .topRight]))
            )
            
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

var tabs = ["house", "book", "suit.heart", "person"]
