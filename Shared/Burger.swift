//
//  Burger.swift
//  burgers
//
//  Created by Barry Martin on 6/23/20.
//

import Foundation

struct Burger: Identifiable {
    var id = UUID()
    var name: String
    var ingredientCount: Int
    var isSpicy: Bool = false
    
    var imageName: String 
    var thumbnailName: String { return imageName + "_Thumb" }
}


