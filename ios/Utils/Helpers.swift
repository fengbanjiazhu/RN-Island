//
//  Helpers.swift
//  DynamicIsland
//
//  Created by 任飞翔 on 2/11/2023.
//

import Foundation
import SwiftUI

func calcTimeSince(data: Date) -> Int {
  let seconds = Int(-data.timeIntervalSinceNow)
  return seconds
}

extension View {
  func centerH() -> some View {
    HStack {
      Spacer()
      self
      Spacer()
    }
  }
}
