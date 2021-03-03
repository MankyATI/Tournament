//
//  PlayersInteractor.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import Foundation

protocol PlayerInteractorProtocol {
    func callGetAllPlayersAPI()
    var presenter: PlayerPresenterInteractorProtocol? { get set }
}

class PlayersInteractor: PlayerInteractorProtocol {
    
    var presenter: PlayerPresenterInteractorProtocol?
    
    func callGetAllPlayersAPI() {
        ApiHandler.getAllPlayers { (players) in
            self.presenter?.getPlayers(players: players)
        } onFailure: {
            
        }
    }
}
