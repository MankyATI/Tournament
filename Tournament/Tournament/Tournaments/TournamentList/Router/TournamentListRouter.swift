//
//  TournamentListRouter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import Foundation
import UIKit

protocol TournamentListRouterProtocol {
    static func createTournamentList() -> TournamentListViewController
}

class TournamentListRouter: TournamentListRouterProtocol {
    
    static func createTournamentList() -> TournamentListViewController {
        guard let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "TournamentListViewController") as? TournamentListViewController else {
            return TournamentListViewController()
        }
        
        var presenter: TournamentListPresenterViewProtocol & TournamentListPresenterInteractorProtocol = TournamentListPresenter()
        var interactor: TournamentListInteractorProtocol = TournamentListInteractor()
        let router: TournamentListRouterProtocol = TournamentListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        return view
    }
}
