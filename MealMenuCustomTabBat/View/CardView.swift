//
//  CardView.swift
//  MealMenuCustomTabBat
//
//  Created by Maxim Macari on 13/11/20.
//

import SwiftUI

struct CardView: View {
    var item: Item
    var white = Color.white.opacity(0.85)
    var width = UIScreen.main.bounds.width * 0.33
    
    var body: some View {
        VStack(spacing: -10){
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: width)
            
            
            VStack{
                Text("\(item.name)")
                    .lineLimit(1)
                    .minimumScaleFactor(0.6)
            }
            .padding()
            
            
            HStack{
                
                Text("\(item.price)")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                    
                }
                
                
            }
            .padding(.horizontal)
            
        }
        .padding(.bottom)
        .background(
            LinearGradient(gradient: .init(colors: [Color.white.opacity(0.1), Color.black.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(25)
            
        )
    }
}

