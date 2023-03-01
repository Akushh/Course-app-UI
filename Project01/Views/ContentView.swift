//
//  ContentView.swift
//  Project01
//
//  Created by Akif Hasanov on 5.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                
                //MARK: Header
                HeaderView()
                
                //MARK: Progress
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        ForEach(progressItems) { item in
                            ProgressView(progress: item)
                        }
                    }
                    .padding(24)
                }
                
                //MARK: Carousel
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 30){
                        ForEach(sectionData) { item in
                            GeometryReader{ proxy in
                                CardView(section: item)
                                    .rotation3DEffect(Angle(degrees: Double(proxy.frame(in: .global).minX - 16) / -20), axis: (x: 0, y: 10, z: 0))
                            }
                            .frame(width: 235, height: 306)
                        }
                    }
                    .padding()
                    .padding(.bottom)
                }
                .padding(.top)
                
                
                //MARK: Special For You Section
                VStack(spacing: 30){
                    Text("Special For You!")
                        .font(.system(size: 32, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(specialItems) { item in
                        SpecialCardView(special: item)
                    }
                }
                .padding(.top, 36)
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

