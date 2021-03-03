//
//  AddPlayerInteractor.swift
//  Tournament
//
//  Created by Mayank Pahuja on 03/03/21.
//

import Foundation

protocol AddPlayerInteractorProtocol {
    var presenter: AddPlayerPresenterInteractorProtocol? { get set }
    func callApiAddPlayer()
}

class AddPlayerInteractor: AddPlayerInteractorProtocol {
    var presenter: AddPlayerPresenterInteractorProtocol?
    func callApiAddPlayer() {
        
    }
}
