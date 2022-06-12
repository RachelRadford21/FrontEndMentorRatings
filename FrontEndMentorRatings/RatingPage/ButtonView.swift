//
//  ButtonView.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var viewModel: ViewModel

    var body: some View {
        Button {
            viewModel.isPressed.toggle()
            viewRouter.currentPage = .page2
        } label: {
            Text("S U B M I T")
                .font(Font.custom("overpass", size: 20))
                .fontWeight(.bold)
                .foregroundColor(viewModel.isPressed ? Color.primaryOrange : .white)
                .frame(width: 330, height: 45, alignment: .center)
                .background(viewModel.isPressed ? Color.white : Color.primaryOrange)
                .cornerRadius(20)
                
                
        }
        .disabled((viewModel.buttonIndex == 0))
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .environmentObject(ViewRouter())
            .environmentObject(ViewModel())
    }
}
