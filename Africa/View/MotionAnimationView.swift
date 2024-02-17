//
//  MotionAnimationView.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/17.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    // MARK -FUNCTIONS
    func randomCoodinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    func radomeScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    var body: some View {
        GeometryReader { geomatory in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? radomeScale() : 1)
                        .position(
                            x: randomCoodinate(max: geomatory.size.width),
                            y: randomCoodinate(max: geomatory.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                } // : LOOP
            } // :ZSTACK
            .drawingGroup()
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
