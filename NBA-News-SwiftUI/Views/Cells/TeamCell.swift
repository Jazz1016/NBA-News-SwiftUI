//
//  TeamCell.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/13/23.
//

import SwiftUI

struct TeamCell: View {
    
    var team: NBATeam
    
    var body: some View {
        VStack {
            Image("NBA-Icon")
                .resizable()
                .frame(width: 32, height: 32, alignment: .center)
        }
        .padding()
    }
}

struct TeamCell_Previews: PreviewProvider {
    static var previews: some View {
        TeamCell(team: mockTeams[0])
    }
}
