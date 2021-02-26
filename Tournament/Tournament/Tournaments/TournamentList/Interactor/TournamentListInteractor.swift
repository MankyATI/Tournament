//
//  TournamentListInteractor.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import Foundation

protocol TournamentListInteractorProtocol {
    var presenter: TournamentListPresenterInteractorProtocol? { get set }
    func getTournamentListItems() -> [TournamentListModel]
}

class TournamentListInteractor: TournamentListInteractorProtocol {
    var presenter: TournamentListPresenterInteractorProtocol?
    
    func getTournamentListItems() -> [TournamentListModel] {
        var tournamentListArray = [TournamentListModel]()
        tournamentListArray.append(TournamentListModel(name: "PMCT",
                                                       startDate: "24 Dec 2020",
                                                       organiser: "Peaky Esports",
                                                       numOfTeams: 24))
        
        tournamentListArray.append(TournamentListModel(name: "T3 Tournamet",
                                                       startDate: "1 Jan 2020",
                                                       organiser: "Peaky Esports",
                                                       numOfTeams: 22))
        
        tournamentListArray.append(TournamentListModel(name: "PMVT",
                                                       startDate: "7 Feb 2020",
                                                       organiser: "Peaky Esports",
                                                       numOfTeams: 24))
        
        tournamentListArray.append(TournamentListModel(name: "T3 Tournamet",
                                                       startDate: "8 March 2020",
                                                       organiser: "Peaky Esports",
                                                       numOfTeams: 21))
        
        return tournamentListArray
    }
}
