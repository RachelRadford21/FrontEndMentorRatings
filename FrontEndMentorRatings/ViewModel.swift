//
//  ViewModel.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import Foundation

///Mark:
/*
    This is the class we use to staore state variable. This is a cleaner way to store variables, rather that @State & @Biding in every file necessary.
 */
class ViewModel: ObservableObject {
    @Published var buttonIndex = 0
    @Published var isPressed = false

}
