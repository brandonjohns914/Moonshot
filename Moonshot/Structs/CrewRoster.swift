//
//  CrewRoster.swift
//  Moonshot
//
//  Created by Brandon Johns on 7/6/23.
//

import SwiftUI

struct CrewRoster: View {
    
    let crew: [MissionView.CrewMember]
    var body: some View {
        ScrollView(.horizontal, showsIndicators:  false ) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaunt: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                Capsule()
                                    .strokeBorder(.white, lineWidth: 1)
                                )
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                
                                Text(crewMember.role)
                                    .foregroundColor(.secondary)
                            }
                            .padding(.horizontal)
                        }
                    }
                }
            }
        }
    }
}

struct CrewRoster_Previews: PreviewProvider {
    static var previews: some View {
        CrewRoster(crew:  [])
    }
}
