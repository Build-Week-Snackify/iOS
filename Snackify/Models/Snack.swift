//
//  Snack.swift
//  Snackify
//
//  Created by Jon Bash on 2019-11-18.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

// MARK: - Snack

struct Snack: Codable {
    let name: String
    let type: String
    let numberOfServings: Int
    let nutritionInfo: NutritionInfo
    let totalWeight: Double
    let price: Double
    let imageData: Data
}

// MARK: - Nutrition Info

struct NutritionInfo: Codable {
    let calories: Double
    let totalFat: Double
    let totalSugars: Double
    let protein: Double
    let carbs: Double
    let allergens: [Allergen]
}

// MARK: - Allergen

enum Allergen: String, Codable {
    case peanuts
    case dairy
    case egg
    case gluten
    case meat
    case shellfish
}
