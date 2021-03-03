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

enum HomeListType: Int {
    case tournament = 0
    case team = 1
    case players = 2
}
