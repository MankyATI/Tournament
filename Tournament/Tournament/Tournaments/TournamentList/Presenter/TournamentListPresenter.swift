//
//  TournamentListPresenter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import Foundation

protocol TournamentListPresenterViewProtocol {
    
    var view: TournamentListViewController? { get set }
    var interactor: TournamentListInteractorProtocol? { get set }
    var router: TournamentListRouterProtocol? { get set }
    func updateTournamentList()
}

protocol TournamentListPresenterInteractorProtocol {

    func makeTournamentList() -> [TournamentListModel]
}


class TournamentListPresenter: TournamentListPresenterViewProtocol {
    var view: TournamentListViewController?
    
    var interactor: TournamentListInteractorProtocol?
    
    var router: TournamentListRouterProtocol?
    
    func updateTournamentList() {
        view?.makeTournamentList(items: self.makeTournamentList())
    }
}

extension TournamentListPresenter: TournamentListPresenterInteractorProtocol {
    func makeTournamentList() -> [TournamentListModel] {
        if let interactor = interactor {
            return interactor.getTournamentListItems()
        }
        return []
    }
}
