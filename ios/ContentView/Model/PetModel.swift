//
//  PetModel.swift
//  DynamicIsland
//
//  Created by 任飞翔 on 2/11/2023.
//

import Foundation

struct PetTest: Codable {
  var name: String
  var birthday = Date()
  var lastMeal: Date
  var lastDrink: Date
  
  var age: Int {
    let timeSince = calcTimeSince(data: birthday)
    return timeSince
  }
  
  var happinessLevel: String {
    hunger == "Hungry" || thirst == "Thirst" ? "Unhappy" : "Happy"
  }
  
  var hunger: String {
    let timeSince = calcTimeSince(data: lastMeal)
    var string = "Hungry"
    //    add hungry fn
    
    return string
  }
  
  var thirst: String {
    let timeSince = calcTimeSince(data: lastDrink)
    var string = "Thirst"
    //    add thirst fn
    
    return string
  }
}
