//
//  ContentView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI

///Mark:
/*
        The content view is the "entry point" to the app. It's where you want to start to get the
        full functionality of the app while previewing.
        The enum creates the pages we can switch on.
        The viewRouter class publishes the current page so we can change state/views.
        The environmentObjects in the preview are necessary to use viewModel & viewRouter vars
*/

enum Pages {
    case page1, page2
}

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
 
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
