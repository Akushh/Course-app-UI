//
//  HeaderView.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            HStack(spacing: 16){
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                Text("Akif Hasanov")
                    .font(.system(size: 20, weight: .semibold))
            }
            Spacer()
            VStack(spacing: 6){
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 20, height: 2)
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 20, height: 2)
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 20, height: 2)
            }
        }
        .padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
