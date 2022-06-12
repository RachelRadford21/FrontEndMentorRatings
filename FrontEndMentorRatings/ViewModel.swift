//
//  ViewModel.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var buttonIndex = 0
    @Published var isPressed = false
}
