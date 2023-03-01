//
//  ProgressStructure.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct Progress: Identifiable{
    var id = UUID().uuidString
    var persentage: Double
    var textPersentage: Int
    var title: String
    var text: String
    var color: Color
}

let progressItems: [Progress] = [
    Progress(persentage: 0.75, textPersentage: 75, title: "SwiftUI", text: "%25 left", color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1))),
    Progress(persentage: 0.43, textPersentage: 43, title: "Java Script", text: "%57 left", color: Color(#colorLiteral(red: 1, green: 0.7644249797, blue: 0, alpha: 1))),
    Progress(persentage: 0.89, textPersentage: 89, title: "Python", text: "%11 left", color: Color(#colorLiteral(red: 0, green: 0.7051291466, blue: 1, alpha: 1)))
]
