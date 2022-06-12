//
//  IconCircleView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI

struct IconCircleView: View {
    var body: some View {
       
Image("icon-star")
            .frame(width: 40, height: 40, alignment: .center)
            .background(Circle()
                .fill(Color.mediumGrey.opacity(0.1))
                .frame(width: 55, height: 55)
            )
        
    }
}

struct IconCircleView_Previews: PreviewProvider {
    static var previews: some View {
        IconCircleView()
    }
}
