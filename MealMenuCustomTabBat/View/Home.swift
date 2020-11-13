//
//  Home.swift
//  MealMenuCustomTabBat
//
//  Created by Maxim Macari on 13/11/20.
//

import SwiftUI

struct Home: View {
    
    var animation: Namespace.ID
    var white = Color.white.opacity(0.85)
    
    
    
    fileprivate func Header(title: String) -> HStack<TupleView<(Text, Spacer)>> {
        return HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(white)
            
            Spacer(minLength: 10)
            
        }
    }
    
    var body: some View {
        VStack{
            ZStack {
                HStack{
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "rectangle.grid.2x2")
                            .font(.title2)
                            .foregroundColor(white)
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(white)
                    })
                    
                }
                .padding([.horizontal, .bottom])
                .padding(.top, 10)
                
                Text("Meals")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                   
                    
                    Header(title: "Special meals")
                        .padding(.horizontal)
                    
                    HStack{
                        VStack(alignment: .leading, spacing: 6, content: {
                            Text("Pancakes")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            HStack{
                                Text("Only today")
                                    .foregroundColor(white)
                                
                                Text("10%")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("off")
                                    .foregroundColor(white)
                            }
                            
                            Text("€10")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        })
                        
                        Spacer()
                        
                        Image("ramen")
                            .zIndex(-1)
                    }
                    .padding([.vertical, .leading])
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color.gray, Color.clear.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
                            .cornerRadius(25)
                            .padding(.vertical, 25)
                        
                        
                    )
                    .padding(.horizontal)
                    
                    
                    Header(title: "Seasonal meals")
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 8){
                            ForEach(items){ item in
                                
                                CardView(item: item)
                                
                            }
                        }
                        .padding()
                        .padding(.horizontal, 4)
                    }
                }
             
                
                Header(title: "Healty meals")
                    .padding(.horizontal)
                
                HStack{
                    
                    Image("meatless")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170, height: 170)
                        .padding(.trailing)
                    
                    VStack(alignment: .leading, spacing: 6, content: {
                        Text("Meatless meal")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        
                        Text("Super tasty")
                            .foregroundColor(white)
                        Text("€9")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                }
                .padding([.vertical, .trailing])
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color.gray, Color.clear.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
                        .cornerRadius(25)
                        .padding(.vertical, 25)
                        
                )
                .padding(.horizontal)
            }
            .padding(.bottom, 80) // provisional padding
        }
    }
}


