//
//  PlayersModel.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import Foundation

struct Player: Codable {
    var name: String
    var position: [Int]?
    var team: [String]?
    var matches: Int?
    var kills: Int?
    var photo: String?
    var autoID: String?
    
    private enum CodingKeys: String, CodingKey {
        case name, position, team, matches, kills, photo, autoID = "_id"
    }
}
