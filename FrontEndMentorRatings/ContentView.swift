//
//  ContentView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI

enum Pages {
    case page1, page2
}

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            RatingView()
        case .page2:
            ThankYouView()
                
                
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
