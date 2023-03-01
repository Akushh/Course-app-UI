//
//  CardView.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct CardView: View {
    var section: Section
    var body: some View {
        VStack{
            HStack{
                Text(section.title)
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
                Spacer()
                section.logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
            }
            Text(section.text)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .light))
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text("Purchase now")
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(
                    RoundedRectangle(cornerRadius: 50)
                        .fill(section.color)
                )
                .foregroundColor(.white)
            
        }
        .padding()
        .frame(width: 235, height: 305)
        .background(section.color.opacity(0.65))
        .cornerRadius(20)
        .shadow(color: section.color.opacity(0.5), radius: 10, x: 0, y: 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(section: Section(title: "SwiftUI", text: "Best way to learn Swift!", logo: Image("swift"), image: Image("pc1"), color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1))))
    }
}
