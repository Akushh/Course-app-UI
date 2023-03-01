//
//  ScrollViewStructure.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct Section: Identifiable{
    var id = UUID().uuidString
    var title: String
    var text: String
    var logo: Image
    var image: Image
    var color: Color
}
let sectionData: [Section] = [
    Section(title: "Swift", text: "Learn Swift from scratch!", logo: Image("swift"), image: Image("pc1"), color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1))),
    Section(title: "Java Script", text: "Learn Java Script from scratch!", logo: Image("javascript"), image: Image("pc4"), color: Color(#colorLiteral(red: 1, green: 0.7644249797, blue: 0, alpha: 1))),
    Section(title: "Python", text: "Learn Python from scratch!", logo: Image("python"), image: Image("pc3"), color: Color(#colorLiteral(red: 0, green: 0.7051291466, blue: 1, alpha: 1))),
    Section(title: "C#", text: "Learn C# from scratch!", logo: Image("c#"), image: Image("pc2"), color: Color(#colorLiteral(red: 1, green: 0, blue: 0.6815481782, alpha: 1))),
]
