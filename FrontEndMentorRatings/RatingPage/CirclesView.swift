//
//  CirclesView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI
//import Foundation
struct CirclesView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        HStack(spacing: 50){
            ForEach(1..<6, id: \.self) { index in
                Text("\(index)")
                    .onTapGesture {
                        viewModel.buttonIndex = index
                     
                    }
                        .font(Font.custom("overpass", size: 20))
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(viewModel.buttonIndex == index ? Color.white : Color.lightGrey)
                        .font(.system(size: 25))
                        .background(Circle()
                        .fill(viewModel.buttonIndex == index ? Color.primaryOrange : Color.mediumGrey.opacity(0.1))
                        .frame(width: 55, height: 55)
                        )
            }
        }
    }
}

//struct CirclesView_Previews: PreviewProvider {
//    static var previews: some View {
//        CirclesView()
//    }
//}
