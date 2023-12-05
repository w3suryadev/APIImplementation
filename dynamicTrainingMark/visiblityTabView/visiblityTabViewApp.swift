//
//  visiblityTabViewApp.swift
//  visiblityTabView
//
//  Created by Suryadev Singh on 28/11/23.
//

import SwiftUI

@main
struct visiblityTabViewApp: App {
    let trainingMarksData = [TrainingMark(id: 1, positionX: 100, positionY: 430), TrainingMark(id: 2, positionX: 320, positionY: 430)]
    var body: some Scene {
        WindowGroup {
            ContentView(trainingMarks: trainingMarksData)
        }
    }
}
