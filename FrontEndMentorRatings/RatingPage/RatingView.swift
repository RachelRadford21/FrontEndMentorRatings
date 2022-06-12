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
                                .position(x: 45, y: 230)
                            CirclesView()
                                .position(x: 200, y: 460)
                            ButtonView()
                                .position(x: 200, y: 540)
                            
                        } else {
                            
                            MainComponentView(headerTitle: "How did we do?" , paragraph: " Please let us know how we did with your support\n request. All feedback is appreciated to help us\n improve our offering!")
                            IconCircleView()
                                .position(x: 250, y: 30)
                            CirclesView()
                                .position(x: 385, y: 260)
                            ButtonView()
                                .position(x: 385, y: 330)
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
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
