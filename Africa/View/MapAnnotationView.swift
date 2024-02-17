//
//  MapAnnotationView.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/16.
//

import SwiftUI

struct MapAnnotationView: View {
    
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height:54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1-animation)

            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52, alignment: .center)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .center)
            .clipShape(Circle())
        }
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
