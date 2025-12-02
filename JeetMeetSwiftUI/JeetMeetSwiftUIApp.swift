//
//  JeetMeetSwiftUIApp.swift
//  JeetMeetSwiftUI
//
//  Created by Krishnanunni K A on 02/12/25.
//

import SwiftUI

@main
struct JeetMeetSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
