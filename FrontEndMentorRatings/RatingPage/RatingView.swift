//
//  RatingView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI
import Foundation



struct RatingView: View {
    @StateObject var viewRouter: ViewRouter = ViewRouter()
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                VStack{
                    GeometryReader { geo in
                        
                        if geo.size.height > geo.size.width {
                            MainComponentView(headerTitle: "How did we do?" , paragraph: " Please let us know how we did with your support\n request. All feedback is appreciated to help us\n improve our offering!")
                            IconCircleView()
                                .position(x: geo.size.width * 0.14, y: geo.size.height * 0.31)
                            CirclesView()
                                .position(x: geo.size.width * 0.48, y: geo.size.height * 0.59)
                            ButtonView()
                                .position(x: geo.size.width * 0.48, y: geo.size.height * 0.681)
                            
                        } else {
                            
                            MainComponentView(headerTitle: "How did we do?" , paragraph: " Please let us know how we did with your support\n request. All feedback is appreciated to help us\n improve our offering!")
                            IconCircleView()
                                .position(x: geo.size.width * 0.32, y: geo.size.height * 0.1)
                            CirclesView()
                                .position(x: geo.size.width * 0.49, y: geo.size.height * 0.68)
                            ButtonView()
                                .position(x: geo.size.width * 0.49, y: geo.size.height * 0.88)
                        }
                    }
                }
            }
        }
    }
}


struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
