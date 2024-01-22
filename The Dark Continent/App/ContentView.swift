//
//  ContentView.swift
//  The Dark Continent
//
//  Created by Kasun Rangana M W on 22/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // MARK: - PROPERTIES
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // MARK: - BODY
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    AnimalListItemView(animal: animal)
                }
            } //: LIST
            .navigationBarTitle("The Dark Continent", displayMode: .large)
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
