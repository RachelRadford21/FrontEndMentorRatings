//
//  FrontEndMentorRatingsApp.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI

@main
struct FrontEndMentorRatingsApp: App {
    @StateObject var viewRouter = ViewRouter()
    @StateObject var viewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
                .environmentObject(viewRouter)
        }
    }
}
