//
//  SpecialCardView.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct SpecialCardView: View {
    var special: SpecialForYou
    var body: some View {
        VStack(spacing: 24){
            HStack{
                special.logo
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30)
                Text(special.title)
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
                
                Text("Made by Akush")
                    .font(.system(size: 14, weight: .light))
            }
            
            VStack(spacing: 24){
                special.image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .frame(width: 130)
                Text(special.text)
                    .lineLimit(3)
                Text("Try Now!")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 24)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(special.buttonColor)
                    )
                    .foregroundColor(.white)
            }
        }
        .foregroundColor(.white)
        .padding()
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(special.color)
        )
    }
}

struct SpecialCardView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialCardView(special: SpecialForYou(title: "SwiftUI Course", text: "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", logo: Image("swift"), image: Image("pc5"), color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1)), buttonColor: Color(#colorLiteral(red: 0.8528751135, green: 0.3673810363, blue: 0.06300009042, alpha: 1))))
    }
}
