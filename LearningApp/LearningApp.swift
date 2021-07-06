//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Monty Montgomery on 7/4/21.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
