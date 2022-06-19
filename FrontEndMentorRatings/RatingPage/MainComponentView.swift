//
//  MainComponentView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/12/22.
//

import SwiftUI

struct MainComponentView: View {
    var headerTitle = ""
    var paragraph = ""
   
    var body: some View {
       
            Text(headerTitle)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .font(Font.custom("overpass", size: 25))
            .foregroundColor(Color.white)
            .padding(.bottom,180)
            .padding(.trailing, 170)
            .background(
                
               Text(paragraph)
                .frame(alignment: .leading)
                .foregroundColor(Color.lightGrey)
                .font(.callout)
                .font(Font.custom("overpass", size: 0))
                .padding(.bottom, 50)
                .padding(.leading, -5)
                .lineSpacing(3)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 380, height: 400, alignment: .center)
                        .foregroundColor(Color.darkBlue)
                        .shadow(color: Color.mediumGrey.opacity(0.4), radius: -5, x: -1, y: -1)
                        .padding(.horizontal, 20)))
            
    }
}

struct MainComponentView_Previews: PreviewProvider {
    static var previews: some View {
        MainComponentView()
    }
}
