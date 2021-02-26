//
//  TournamenrListModel.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import Foundation

struct TournamentListModel {
    var name: String?
    var startDate: String?
    var endDate: String?
    var organiser: String?
    var image: String?
    var numOfTeams: Int?
    var rosterLimit: Int?
    var schedule: [Schedule]?
    var rules: [Rules]?
    var pointSystem: [PointSystem]?
    
}

struct Schedule {
    
}

struct Rules {
    
}

struct PointSystem {
    
}
