//
//  ReadMe.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/12/22.
//

import Foundation


//// Comments:
/**
        ContentView:
            The ContentView is the "entry point" for the app. Start here for the views to flow properly.
                
                The enum is used to switch on views when a button is pressed.
                Using a ViewRouter and ViewModel in this project was probably a bit much but it makes the app more fluid.
 
 RatingsPage:
        RatingView:
            The RatingView is the main view in this group of files. All the other views flow up to this view.
 
                The geoReader reads the screen size and allows you to structure
                the view diff depending on screen size(landscape or portrait).
        CirclesView:
            This view contains the circle rating number buttons.
                    
                The ForEach loops through 1..5 to create a "button" for each
                rating number. We pass the value of the index to buttonIndex so we
                can access each button independently and change modifiers depending
                on it's "state". This value is also used to display the rating you chose in the thankyouview.
 
        ButtonView:
            This allows us to use the Pages enum & viewRouter to go to the thankyouview
        
                We use isPressed to change the state of the modifiers when the button
                is pressed. The viewRouter navigates to the thankyouview.
                This button is disabled if a user has not selected a rating value.
                        
        IconView:
            This simple view shows the star icon on the top left hand corner of the card in the ratingview.
 
         MainComponentView:
            This is the main card in the background of both the ratingsview & thankyouview.
        
                The variable "headerTitle" & "paragraph" allow this view to be reused throughout the app. All we need to do it change the title & the body/paragraph text.
 
 ThankYouPage:
         ThankYouView:
            This is the main page in the thankyoupage group.
 
                A geoReader is used again to read the screen height & width & allow
                us to show the view differently in landscape or portrait.
                ** A geoReader is "expensive", too many can slow your app down, but
                    I think it is much more reliable than class sizes.
 
        RatingsSelectedView:
            This view makes up the component in the thankyouview, that shows you what ratings number you chose.
**/
