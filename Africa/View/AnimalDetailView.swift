//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Welliton da Conceicao de Araujo on 11/04/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //: IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //: TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 25)
                    )
                
                //: HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                

                //: GALLERY
                
                //: FACTS
                
                //: DESCRIPTION
                
                //: MAP
                
                //: LINK
                
            } //: VSTACK
            .navigationTitle("Learn about \(animal.name)")
        } //: SCROLL
    }
}
// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] =
    Bundle.main.docode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}
