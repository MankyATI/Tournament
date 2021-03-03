//
//  PlayersViewController.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import UIKit

protocol PlayersViewProtocol {
    func makePlayersTable(players: [Player])
}

class PlayersViewController: UIViewController {

    var presenter: PlayerPresenterViewProtocol?
    @IBOutlet weak var playersTable: UITableView!
    var playersArray: [Player]?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.callGetAllPlayersAPI()

        playersTable.register(cellClass: PlayersCell.self)
        // Do any additional setup after loading the view.
    }
}

extension PlayersViewController: PlayersViewProtocol {
    func makePlayersTable(players: [Player]) {
        playersArray = players
        playersTable.reloadSafe()
    }
}

extension PlayersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let playersArray = playersArray {
            return playersArray.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PlayersCell  = tableView.dequeue(cellClass: PlayersCell.self,
                                                            forIndexPath: indexPath)
        if let playersArray = playersArray {
            cell.player = playersArray[indexPath.row]
        }
        cell.fillValues()
        return cell
    }
}
