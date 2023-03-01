//
//  ProgressView.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct ProgressView: View {
    var progress: Progress
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(.white)
            .shadow(color: .black.opacity(0.2), radius: 10, y: 5)
            .frame(width: 280, height: 60)
            .overlay {
                HStack{
                    Circle()
                        .trim(from: 0.0, to: CGFloat(progress.persentage))
                        .stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round))
                        .rotation(Angle(degrees: 270))
                        .foregroundColor(progress.color)
                        .frame(width: 40, height: 40)
                        .overlay {
                            Text("\(progress.textPersentage)")
                                .font(.system(size: 18, weight: .semibold))
                        }
                        .aspectRatio(contentMode: .fit)
                    VStack(alignment: .leading){
                        Text(progress.title)
                            .font(.system(size: 18, weight: .semibold))
                        Text(progress.text)
                            .font(.system(size: 14))
                    }
                    Spacer()
                    Text("Keep it up!")
                        .font(.system(size: 14, weight: .light))
                }
                .padding(.horizontal)
            }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView(progress: Progress(persentage: 0.75, textPersentage: 75, title: "SwiftUI", text: "%25 left", color: Color(#colorLiteral(red: 0.2547963858, green: 0, blue: 0.6851847172, alpha: 1))))
    }
}
