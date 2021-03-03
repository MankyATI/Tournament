//
//  PlayersRouter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import UIKit
import Foundation


protocol PlayersRouterProtocol {
    static func createPlayerListList() -> PlayersViewController
}

class PlayersRouter: PlayersRouterProtocol {
    static func createPlayerListList() -> PlayersViewController {
        guard let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PlayersViewController") as? PlayersViewController else {
            return PlayersViewController()
        }
        
        var presenter: PlayerPresenterViewProtocol & PlayerPresenterInteractorProtocol = PlayersPresenter()
        var interactor: PlayerInteractorProtocol = PlayersInteractor()
        let router: PlayersRouterProtocol = PlayersRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        return view
    }
}
