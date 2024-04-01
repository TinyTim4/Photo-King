//
//  CameraViewControllerDelegate.swift
//  Photo King
//
//  Created by Timothy Liu on 4/1/24.
//

import SwiftUI


struct StructSeemeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
