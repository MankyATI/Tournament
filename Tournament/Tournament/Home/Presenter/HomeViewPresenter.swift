//
//  HomeViewPresenter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 23/02/21.
//

import Foundation

protocol HomeViewPresenterViewProtocol {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeViewInteractorProtocol? { get set }
    var router: HomeViewRouterProtocol? { get set }
    func updateHome()
}

protocol HomeViewPresenterInteratorProtocol {
    func getHomeItems() -> [HomeModel]
}

class HomeViewPresenter: HomeViewPresenterViewProtocol {
    var view: HomeViewProtocol?
    
    var interactor: HomeViewInteractorProtocol?
    
    var router: HomeViewRouterProtocol?
    
    func updateHome() {
        view?.makeHomeTable(homeItems: self.getHomeItems())
    }
}

extension HomeViewPresenter: HomeViewPresenterInteratorProtocol {
    
    func getHomeItems() -> [HomeModel] {
        guard let interactor = interactor else {
            return []
        }
        return interactor.getHomeItems()
    }
    
}
