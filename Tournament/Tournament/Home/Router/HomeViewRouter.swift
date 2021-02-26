//
//  HomeViewRouter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 23/02/21.
//

import Foundation
import UIKit

protocol HomeViewRouterProtocol {
    static func createHome() -> HomeViewController
}

class HomeViewRouter: HomeViewRouterProtocol {
    static func createHome() -> HomeViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        var presenter: HomeViewPresenterViewProtocol & HomeViewPresenterInteratorProtocol  = HomeViewPresenter()
        var interactor: HomeViewInteractorProtocol = HomeViewInterator()
        let router: HomeViewRouterProtocol = HomeViewRouter()
        
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}
