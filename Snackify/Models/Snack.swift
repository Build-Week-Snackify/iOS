//
//  Snack.swift
//  Snackify
//
//  Created by Jon Bash on 2019-11-18.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

// MARK: - Snack

class Snack {
    let id: Int
    let name: String
    let type: String = "??" // not sure what to do with this
    let numberOfServings: Int
    var nutritionInfo: NutritionInfo? = nil // fetched when needed
    let totalWeight: Double // grams
    let price: Double
    
    var representation: Representation?
    
    struct Representation: Codable {
        let id: Int
        let name: String
        let numberOfServings: Int
        let totalWeight: Double
        let price: Double
        let subId: Int
    }
    
    init(fromRepresentation rep: Representation) {
        self.id = rep.id
        self.name = rep.name
        self.numberOfServings = rep.numberOfServings
        self.totalWeight = rep.totalWeight
        self.price = rep.price
    }
}

// MARK: - Nutrition Info

struct NutritionInfo: Codable {
    let snackId: Int
    let calories: Double?
    let totalFat: Double?
    let totalSugars: Double? // cannot get from backend currently (2019-11-19 15:29)
    let protein: Double?
    let carbs: Double?
    let allergens: String?
}

//// MARK: - Allergen
//
//enum Allergen: String, Codable {
//    case peanuts
//    case dairy
//    case egg
//    case gluten
//    case meat
//    case shellfish
//}
