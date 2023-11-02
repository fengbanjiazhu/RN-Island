//
//  LivePetLiveActivity.swift
//  LivePet
//
//  Created by 任飞翔 on 1/11/2023.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct LivePetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var leadingName: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct LivePetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: LivePetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                  Text(context.state.leadingName)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom")
                    // more content
                }
            } compactLeading: {
                Text("L")
                Image("quasire")
            } compactTrailing: {
                Text("T")
            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

