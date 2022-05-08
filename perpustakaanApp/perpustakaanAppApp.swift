//
//  perpustakaanAppApp.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 07/05/22.
//

import SwiftUI

@main
struct perpustakaanAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
