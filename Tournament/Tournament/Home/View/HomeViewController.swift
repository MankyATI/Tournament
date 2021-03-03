//
//  HomeViewController.swift
//  Tournament
//
//  Created by Mayank Pahuja on 23/02/21.
//

import UIKit

protocol HomeViewProtocol {
    func makeHomeTable(homeItems: [HomeModel])
}

class HomeViewController: UIViewController {
    
    var presenter: HomeViewPresenterViewProtocol?
    var homeItemsArray = [HomeModel]()
    @IBOutlet weak var homeTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTable.register(cellClass: NameAndImageCell.self)
        if presenter != nil {
            presenter?.updateHome()
        }
    }
    
    private func openPage(index: HomeListType?) {
        switch index {
        case .players:
            let playersList = PlayersRouter.createPlayerListList()
            self.navigationController?.pushViewController(playersList, animated: true)
        case .tournament:
            let tournamentList = TournamentListRouter.createTournamentList()
            self.navigationController?.pushViewController(tournamentList, animated: true)
        default:
            let tournamentList = TournamentListRouter.createTournamentList()
            self.navigationController?.pushViewController(tournamentList, animated: true)
        }
    }
}
 
extension HomeViewController: HomeViewProtocol {
    func makeHomeTable(homeItems: [HomeModel]) {
        homeItemsArray = homeItems
        homeTable.reloadSafe()
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeItemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: NameAndImageCell  = tableView.dequeue(cellClass: NameAndImageCell.self,
                                                            forIndexPath: indexPath)
        cell.fillValues(model: homeItemsArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.openPage(index: HomeListType(rawValue: indexPath.row))
    }
}
