//
//  AddPlayerPresenter.swift
//  Tournament
//
//  Created by Mayank Pahuja on 03/03/21.
//

import Foundation

protocol AddPlayerPresenterViewProtocol {
    var view: AddPlayerViewProtocol? { get set }
    var interactor: AddPlayerInteractorProtocol? { get set }
    var router: AddPlayerRouterProtocol? { get set }
    func playerAdded()
}

protocol AddPlayerPresenterInteractorProtocol {
    func callApiAddPlayer()
}

class AddPlayerPresenter: AddPlayerPresenterViewProtocol {
    var view: AddPlayerViewProtocol?
    var interactor: AddPlayerInteractorProtocol?
    var router: AddPlayerRouterProtocol?
    
    func playerAdded() {
        view?.playerAddSuccess()
    }
}

extension AddPlayerPresenter: AddPlayerPresenterInteractorProtocol {
    func callApiAddPlayer() {
        interactor?.callApiAddPlayer()
    }
}
