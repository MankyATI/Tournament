//
//  PlayersPresenter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import Foundation

protocol PlayerPresenterViewProtocol {
    var view: PlayersViewProtocol? { get set }
    var router: PlayersRouterProtocol? { get set }
    var interactor: PlayerInteractorProtocol? { get set }
    func updatePlayers(players: [Player])
    func callGetAllPlayersAPI()
}

protocol PlayerPresenterInteractorProtocol {
    
    func getPlayers(players: [Player])
}


class PlayersPresenter: PlayerPresenterViewProtocol {
    var view: PlayersViewProtocol?
    
    var router: PlayersRouterProtocol?
    
    var interactor: PlayerInteractorProtocol?
    
    func updatePlayers(players: [Player]) {
        view?.makePlayersTable(players: players)
    }
    
    func callGetAllPlayersAPI() {
        interactor?.callGetAllPlayersAPI()
    }
}

extension PlayersPresenter: PlayerPresenterInteractorProtocol {
    
    
    func getPlayers(players: [Player]) {
        self.updatePlayers(players: players)
    }
}
