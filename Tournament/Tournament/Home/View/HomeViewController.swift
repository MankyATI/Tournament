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
        
        homeTable.register(cellClass: NameAndImageCell.self)
        super.viewDidLoad()
        if presenter != nil {
            presenter?.updateHome()
        }
        
    }
}
 
extension HomeViewController: HomeViewProtocol {
    func makeHomeTable(homeItems: [HomeModel]) {
        homeItemsArray = homeItems
        homeTable.reloadData()
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
        let tournamentList = TournamentListRouter.createTournamentList()
        self.navigationController?.pushViewController(tournamentList, animated: true)
    }
    
    private func openPage(index: Int) {
        
    }
}
