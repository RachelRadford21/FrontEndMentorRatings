//
//  ViewRouter.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import Foundation


///Mark:
/*
    This class initiates the current page to page1, found in the Pages enum
*/
class ViewRouter: ObservableObject {
    @Published var currentPage: Pages = .page1
}
