//
//  SpecialForYouStructure.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct SpecialForYou: Identifiable{
    var id = UUID().uuidString
    var title: String
    var text: String
    var logo: Image
    var image: Image
    var color: Color
    var buttonColor: Color
}
let specialItems: [SpecialForYou] = [
    SpecialForYou(title: "SwiftUI Course", text: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", logo: Image("swift"), image: Image("pc5"), color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1)), buttonColor: Color(#colorLiteral(red: 0.8528751135, green: 0.3673810363, blue: 0.06300009042, alpha: 1))),
    SpecialForYou(title: "JavaScript Course", text: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", logo: Image("javascript"), image: Image("pc5"), color: Color(#colorLiteral(red: 1, green: 0.7155655026, blue: 0, alpha: 1)), buttonColor: Color(#colorLiteral(red: 0.8626609445, green: 0.1790346801, blue: 0.3282616436, alpha: 1))),
]
