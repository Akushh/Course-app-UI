//
//  TrimmedCircle.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct TrimmedCircle: View {
    var body: some View {
        Circle()
            .trim(from: 0.0, to: 0.75)
            .stroke(style: StrokeStyle(lineWidth: 20))
            .rotation(Angle(degrees: 270))
            .padding()
        Text("persenrtage * 100")
    }
}

struct TrimmedCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrimmedCircle()
    }
}
