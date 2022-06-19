//
//  Extensions.swift
//  FrontEndMentorRatings
//
//  Created by Rachel Radford on 6/11/22.
//

import Foundation
import SwiftUI

///MARK:
/*
    The color extension allows us to create custom colors, using color literals
 
    The font extension allows us to use the provided font from FEM with a custom name.
*/
extension Color {
    static let lightGrey = Color(#colorLiteral(red: 0.6191810966, green: 0.6475508809, blue: 0.6887680888, alpha: 1))
    static let mediumGrey = Color(#colorLiteral(red: 0.5493205786, green: 0.5744217038, blue: 0.6096975803, alpha: 1))
    static let darkBlue = Color(#colorLiteral(red: 0.05649991217, green: 0.09354393032, blue: 0.1313713712, alpha: 0.986392798))
    static let veryDarkBlue = Color(#colorLiteral(red: 0.08463578671, green: 0.09039521962, blue: 0.09838100523, alpha: 1))
    static let primaryOrange  = Color(#colorLiteral(red: 0.911513792, green: 0.4091239902, blue: 0.06314973153, alpha: 1))
}

extension Font {
    static var overpass: Font {
        Font.custom("Overpass-VariableFont_wght", size: 35)
    }
}
