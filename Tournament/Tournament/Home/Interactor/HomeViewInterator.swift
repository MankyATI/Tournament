//
//  HomeViewInterator.swift
//  Tournament
//
//  Created by Mayank Pahuja on 23/02/21.
//

import Foundation
protocol  HomeViewInteractorProtocol {
    func getHomeItems() -> [HomeModel]
    var presenter: HomeViewPresenterInteratorProtocol? { get set }
    
}

class HomeViewInterator: HomeViewInteractorProtocol {
    var presenter: HomeViewPresenterInteratorProtocol?
    
    func getHomeItems() -> [HomeModel] {
        var homeItems = [HomeModel]()
        homeItems.append(HomeModel.init(value: "Tournaments", image: ""))
        homeItems.append(HomeModel.init(value: "Teams", image: ""))
        homeItems.append(HomeModel.init(value: "Players", image: ""))
        return homeItems
    }
}



