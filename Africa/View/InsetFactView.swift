//
//  InsetFactView.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/15.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
                
            } // Tab
                .tabViewStyle(PageTabViewStyle())
                .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
          
        } // : BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
