//
//  TournamentListCell.swift
//  Tournament
//
//  Created by Mayank Pahuja on 26/02/21.
//

import UIKit

class TournamentListCell: UITableViewCell {

    @IBOutlet weak var tournamentName: UILabel! {
        didSet {
            tournamentName.listTitleText()
        }
    }
    
    @IBOutlet weak var organiser: UILabel! {
        didSet {
            organiser.listSubTitleText()
        }
    }
    
    @IBOutlet weak var date: UILabel! {
        didSet {
            date.dateText()
        }
    }
    
    @IBOutlet weak var size: UILabel! {
        didSet {
            size.listSubTitleText()
        }
    }
    
    
    func fillValues(tournamentListItem: TournamentListModel) {
        tournamentName.text = "\(tournamentListItem.name ?? "")"
        organiser.text = "Organised By:- \(tournamentListItem.organiser ?? "")"
        date.text = "\(tournamentListItem.startDate ?? "")"
        size.text = "Number of teams: \(tournamentListItem.numOfTeams ?? 0)"
    }
}
