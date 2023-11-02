//
//  PetModule.swift
//  DynamicIsland
//
//  Created by 任飞翔 on 31/10/2023.
//

import Foundation
import ActivityKit
import SwiftUI

@objc(Pet)
class Pet: NSObject {
  
  @objc(startActivity)
  func startActivity(){
    print("hello from react native")
    do{
      if #available(iOS 16.1, *){
        let livePetAttributes = LivePetAttributes(name: "Dada")
        let livePetContentState = LivePetAttributes.ContentState(leadingName:"Leading N")
        let activity = try Activity<LivePetAttributes>.request(attributes: livePetAttributes,  contentState: livePetContentState, pushType: nil )
      }else{
        print("Dynamic Island is not supported")
      }
      
    }catch (_){
      print("there is some error")
    }
  }
  
  @objc(updateActivity:)
  func updateActivity(name:String){
    do{
      if #available(iOS 16.1, *){
        let livePetContentState = LivePetAttributes.ContentState(leadingName: name)
        Task{
          for activity in Activity<LivePetAttributes>.activities{
            await activity.update(using: livePetContentState)
          }
        }
        
      }else{
        print("Dynamic Island is not supported")
      }
      
    }catch (_){
      print("there is some error")
    }
  }
  
  @objc(endActivity)
  func endActivity(){
    Task{
      for activity in Activity<LivePetAttributes>.activities{
        await activity.end()
      }
    }
  }
}
