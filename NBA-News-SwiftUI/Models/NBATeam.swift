//
//  NBATeam.swift
//  NBA-News-SwiftUI
//
//  Created by James Lea on 5/13/23.
//

import Foundation

struct NBATeam: Identifiable {
    var id: Int
    var name: String
    var image: String
}

let mockTeams = [
    NBATeam(id: 1, name: "Hawks", image: "hawks-Icon"),
    NBATeam(id: 2, name: "Celtics", image: "celtics-Icon"),
    NBATeam(id: 3, name: "Nets", image: "nets-Icon"),
    NBATeam(id: 4, name: "Hornets", image: "hornets-Icon"),
    NBATeam(id: 5, name: "Bulls", image: "bulls-Icon"),
    NBATeam(id: 6, name: "Cavaliers", image: "cavaliers-Icon"),
    NBATeam(id: 7, name: "Mavericks", image: "mavericks-Icon"),
    NBATeam(id: 8, name: "Nuggets", image: "nuggets-Icon"),
    NBATeam(id: 9, name: "Pistons", image: "pistons-Icon"),
    NBATeam(id: 10, name: "Warriors", image: "warriors-Icon"),
    NBATeam(id: 11, name: "Rockets", image: "rockets-Icon"),
    NBATeam(id: 12, name: "Pacers", image: "pacers-Icon"),
    NBATeam(id: 13, name: "Clippers", image: "clippers-Icon"),
    NBATeam(id: 14, name: "Lakers", image: "lakers-Icon"),
    NBATeam(id: 15, name: "Grizzlies", image: "grizzlies-Icon"),
    NBATeam(id: 16, name: "Heat", image: "heat-Icon"),
    NBATeam(id: 17, name: "Bucks", image: "bucks-Icon"),
    NBATeam(id: 18, name: "Timberwolves", image: "timberwolves-Icon"),
    NBATeam(id: 19, name: "Pelicans", image: "pelicans-Icon"),
    NBATeam(id: 20, name: "Knicks", image: "knicks-Icon"),
    NBATeam(id: 21, name: "Thunder", image: "thunder-Icon"),
    NBATeam(id: 22, name: "Magic", image: "magic-Icon"),
    NBATeam(id: 23, name: "76ers", image: "76ers-Icon"),
    NBATeam(id: 24, name: "Suns", image: "suns-Icon"),
    NBATeam(id: 25, name: "Blazers", image: "blazers-Icon"),
    NBATeam(id: 26, name: "Kings", image: "kings-Icon"),
    NBATeam(id: 27, name: "Spurs", image: "spurs-Icon"),
    NBATeam(id: 28, name: "Raptors", image: "raptors-Icon"),
    NBATeam(id: 29, name: "Jazz", image: "jazz-Icon"),
    NBATeam(id: 30, name: "Wizards", image: "wizards-Icon")
]
