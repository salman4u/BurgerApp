//
//  burgerDetail.swift
//  burgers
//
//  Created by Salman Mamun on 6/24/20.
//

import SwiftUI

struct BurgerDetail: View {
    @State private var zoomed = false
    var burger: Burger
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            Image(burger.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if burger.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(.all)
                .font(Font.headline.smallCaps() )
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .bottom))
            }
        }
        .navigationTitle(burger.name)
        .edgesIgnoringSafeArea(.bottom)
    }
    
}

struct burgerDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                BurgerDetail(burger: testData[0] )
            }
            NavigationView {
                BurgerDetail(burger: testData[1] )
            }
        }
    }
}
