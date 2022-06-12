//
//  ThankYouView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/12/22.
//

import SwiftUI

struct ThankYouView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                VStack {
                    GeometryReader { geo in
                        if geo.size.height > geo.size.width {
                            MainComponentView(
                                headerTitle: "Thank You!   ",
                                paragraph: " We appreciate you taking the time to give a\n rating. If you ever need more  support, don't\n hesitate to get in touch!")
                            .overlay{
                                Image("illustration-thank-you")
                                    .position(x: 290, y: 250)
                                
                                RatingSelectedView()
                                .padding(.top, 200)
                            }
                            
                        }else {
                            MainComponentView(
                                headerTitle: "Thank You!   ",
                                paragraph: " We appreciate you taking the time to give a\n rating. If you ever need more  support, don't\n hesitate to get in touch!")
                            .overlay{
                                Image("illustration-thank-you")
                                    .position(x: 450, y: 70)
                                
                                RatingSelectedView()
                                .padding(.top, 200)
                            }
                            
                            
                            
                            
                        }
                       
                    }
                }
                
            }
        }
    }
}


struct ThankYouView_Previews: PreviewProvider {
    static var previews: some View {
        ThankYouView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
