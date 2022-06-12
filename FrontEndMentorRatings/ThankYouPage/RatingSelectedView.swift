//
//  RatingSelectedView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/12/22.
//

import SwiftUI

struct RatingSelectedView: View {
  
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
        Text("You selected \(viewModel.buttonIndex) out of 5")
            .font(Font.custom("overpass", size: 15))
            .frame(width: 200, height: 35, alignment: .center)
            .foregroundColor(Color.primaryOrange)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(Color.mediumGrey.opacity(0.1))
                    .frame(width: 200, height: 40, alignment: .center)
            )
    }
}

//struct RatingSelectedView_Previews: PreviewProvider {
//    static var previews: some View {
//        RatingSelectedView()
//    }
//}
