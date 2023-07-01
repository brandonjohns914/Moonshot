//
//  AstronautView.swift
//  Moonshot
//
//  Created by Brandon Johns on 6/30/23.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaunt: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaunt.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaunt.description)
                    .padding()
                
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaunt.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        AstronautView(astronaunt: astronauts["armstrong"]!)
    }
}
