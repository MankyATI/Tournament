//
//  PlayersCell.swift
//  Tournament
//
//  Created by Mayank Pahuja on 27/02/21.
//

import UIKit

class PlayersCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel! {
        didSet {
            name.listTitleText()
        }
    }
    
    @IBOutlet weak var matches: UILabel! {
        didSet {
            matches.listSubTitleText()
        }
    }
    
    @IBOutlet weak var kills: UILabel! {
        didSet {
            kills.listSubTitleText()
        }
    }
    
    @IBOutlet weak var profileImage: UIImageView! {
        didSet {
            profileImage.nameAndImageListImage()
        }
    }

    var player: Player?
    
    func fillValues() {
        guard let player = player else {
            return
        }
        name.text = player.name
        matches.text = "Match: \(player.matches ?? 0)"
        kills.text = "Kills: \(player.kills ?? 0)"
    }
}
