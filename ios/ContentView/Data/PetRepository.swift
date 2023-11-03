//
//  PetRepository.swift
//  DynamicIsland
//
//  Created by 任飞翔 on 2/11/2023.
//

import Foundation

class PetRepository {
  private var PET_KEY = "dadaland"
  private var pet: PetTest
  
  init(){
    if let data = UserDefaults.standard.data(forKey: PET_KEY){
      if let decoded = try? JSONDecoder().decode(PetTest.self, from: data){
        
        self.pet = decoded
        print("Pet data successfully retrived!")
        return
      }
    }
    
    self.pet = PetTest(name: "Dada", lastMeal: Date(), lastDrink: Date())
  }
  
  func loadData() -> PetTest {
    return self.pet
  }
  
  func saveData(pet: PetTest) -> {
    if let encoded = try? JSONEncoder().encode(pet) {
      UserDefaults.standard.set(encoded, forKey:  PET_KEY)
      
      print("Data saved at \(Date().formatted(date: .omitted, time: .standard))")
    }
  }
}
