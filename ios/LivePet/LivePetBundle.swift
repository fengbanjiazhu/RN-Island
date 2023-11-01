//
//  LivePetBundle.swift
//  LivePet
//
//  Created by 任飞翔 on 1/11/2023.
//

import WidgetKit
import SwiftUI

@main
struct LivePetBundle: WidgetBundle {
    var body: some Widget {
        LivePet()
        LivePetLiveActivity()
    }
}
