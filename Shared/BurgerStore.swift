//
//  burgerStore.swift
//  burgers
//
//  Created by Salman Mamun on 6/25/20.
//

import Foundation

class BurgerStore : ObservableObject {
    @Published var burgers: [Burger]
    
    init(burgers: [Burger] = []) {
        self.burgers = burgers
    }
}

let testStore = BurgerStore(burgers: testData)
let testData = [
    Burger(name: "Chicha Burger", ingredientCount: 4, isSpicy: false,imageName: "burger_main"),
    Burger(name: "Burger Buzz", ingredientCount: 5, isSpicy: true,imageName: "burger_main"),
    Burger(name: "The Bun Jovi", ingredientCount: 4, isSpicy: true,imageName: "burger_main"),
    Burger(name: "The IceBurg", ingredientCount: 3, isSpicy: false,imageName: "burger_main"),
    Burger(name: "The Grill Thrill", ingredientCount: 5, isSpicy: true,imageName: "burger_main"),
    Burger(name: "Burger Mania", ingredientCount: 2, isSpicy: false,imageName: "burger_main"),
    Burger(name: "Burger Buzz", ingredientCount: 4, isSpicy: false,imageName: "burger_main"),
    Burger(name: "Friendly Burger", ingredientCount: 2, isSpicy: false,imageName: "burger_main"),
    Burger(name: "White Castle Sliders", ingredientCount: 3, isSpicy: true,imageName: "burger_main"),
    Burger(name: "Bullseye Burgers", ingredientCount: 4, isSpicy: true,imageName: "burger_main"),
]
