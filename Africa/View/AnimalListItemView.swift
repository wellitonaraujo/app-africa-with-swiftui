//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Welliton da Conceicao de Araujo on 19/12/22.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .center, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 8)
            } //: VSTACK
        } // HSTACK:

        
       
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.docode("animals.json")
    static var previews: some View {
        AnimalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
