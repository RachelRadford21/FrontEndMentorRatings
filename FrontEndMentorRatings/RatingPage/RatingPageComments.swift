//
//  RatingPageComments.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/19/22.
//

import Foundation


///MARK: RatingPage Comments
/*
    This view presents the main view of the ratings page. All the subviews in this file flow up to this file.
    The viewModel var allows us to access variables in the ViewModel class.
    The viewRouter var allows us to switch pages when the user taps the submit button.
    The GeometryReader detects the screen size and allow us to create custom views when the iPhone is in landscape or portrait.
    We can also use the geo reader to make the view more responsive to screen sizes by
    using its properties in the modifiers.
 
    CirclesView:
 
        This view creates the 5 buttons/circles the user can choose from to rate their experience.
        When a button is tapped, the color changes to orange & the color of the number turns white.
        ** Hover effects can only be used with the iPad and the Mac.
 
    ButtonView:
 
        This view creates the submit button. When the user presses the button it turns white (it happens so fast it's not visible). The button is disabled until the user selects a ratings score.
        Once a rating is selected the view changes to the thank you page.
 
    IconCircleView:
 
        This view creates the circle with the star in the top left corner
 
    MainComponentView:
 
        This view creates the card in the background, the "How did we do ?" header,
        and the accompanying paragraph below.
        The variables at the top allow us to make this view reusable if neccesary.
*/
