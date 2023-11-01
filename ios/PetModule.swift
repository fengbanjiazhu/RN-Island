//
//  PetModule.swift
//  DynamicIsland
//
//  Created by 任飞翔 on 31/10/2023.
//

import Foundation

@objc(Pet)
class Pet: NSObject {
  
  @objc(startActivity)
  func startActivity(){
    print("hello from react native")
  }
}
