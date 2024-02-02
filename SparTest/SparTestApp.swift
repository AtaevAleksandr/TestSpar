//
//  SparTestApp.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

@main
struct SparTestApp: App {

    @StateObject private var reviewVM = ReviewViewModel()

    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(reviewVM)
                .preferredColorScheme(.light)
        }
    }
}
