//
//  AnimalDetailView.swift
//  Africa
//
//  Created by 鈴木航太 on 2024/02/14.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20 ) {
                // HeroImage
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // Gellary
                
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //Facts
                
                Group {
                    
                HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                    
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //Map
                Group {
                    HeadingView(headingImage: "map", headingText: "Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
            } // :Vstack
            .navigationBarTitle("Learn abount \(animal.name)", displayMode: .inline)
        } // SCROLL
       
    }
}

struct AnimalDetailView_Previews: PreviewProvider {

    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        
    }
}
