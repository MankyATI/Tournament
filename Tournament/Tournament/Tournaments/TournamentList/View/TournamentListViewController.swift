//
//  TournamentListViewController.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import UIKit

protocol TournameListViewProtocol {
    func makeTournamentList(items: [TournamentListModel])
    
}

class TournamentListViewController: UIViewController {

    var presenter: TournamentListPresenterViewProtocol?
    var tournamentListArray = [TournamentListModel]()
    @IBOutlet weak var tournamentListTable: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        tournamentListTable.register(cellClass: TournamentListCell.self)
        presenter?.updateTournamentList()
        // Do any additional setup after loading the view.
    }
    
    func makeTournamentList(items: [TournamentListModel]) {
        tournamentListArray = items
        tournamentListTable.reloadData()
    }
}

extension TournamentListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tournamentListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TournamentListCell  = tableView.dequeue(cellClass: TournamentListCell.self,
                                                            forIndexPath: indexPath)
        
        cell.fillValues(tournamentListItem: tournamentListArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
