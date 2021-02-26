//
//  HomeViewModel.swift
//  Tournament
//
//  Created by Mayank Pahuja on 23/02/21.
//

import Foundation
import UIKit

struct HomeModel {
    var value: String?
    var image: String?
}

enum HomeListType: String {
    case tournament = "Tournaments"
    case team = "Teams"
    case players = "Players"
}
