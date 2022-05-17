//
//  ContentView.swift
//  Shared
//
//  Created by Salman Mamun on 6/24/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: BurgerStore
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.burgers) { burger in
                    BurgerCell(burger: burger)
                }
                .onMove(perform: moveburgers)
                .onDelete(perform: deleteburgers)
                
                
                HStack {
                    Spacer()
                    Text("\(store.burgers.count) burgers")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Burgers")
            .toolbar {      // these appear at bottom of List - NOT Top
                Button("Add", action: makeburger)
                Spacer()
                EditButton()
            }
            
            Image("burger cartoon")       // for iPad/Mac - the right 2nd view
        }
        
    }
    
    func makeburger() {
        withAnimation {
            store.burgers.append(Burger(name: "Chicha Burger", ingredientCount: 4, isSpicy: false,imageName: "burger_main"))
        }
    }
    
    func moveburgers(from: IndexSet, to: Int) {
        withAnimation {
            store.burgers.move(fromOffsets: from, toOffset: to)
        }
    }

    func deleteburgers(offsets: IndexSet) {
        withAnimation {
            store.burgers.remove(atOffsets: offsets)
        }
    }
    
}



struct BurgerCell: View {
    var burger: Burger      // passed in just ONE burger
    
    var body: some View {
        NavigationLink( destination: BurgerDetail(burger: burger)) {
            
            Image(burger.thumbnailName)
                .resizable()        // our thumbnails are not all the same size
                .aspectRatio(contentMode: .fit )
                .cornerRadius(8)
                .frame(width: 50, height: 50 )
            
            
            
            VStack(alignment: .leading) {
                Text(burger.name)
                
                Text("\(burger.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore)
    }
}
