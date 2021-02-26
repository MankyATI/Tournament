//
//  NameAndImageCell.swift
//  Tournament
//
//  Created by Mayank Pahuja on 24/02/21.
//

import UIKit

class NameAndImageCell: UITableViewCell {
    
    var showImage: Bool?
    
    @IBOutlet weak var title: UILabel! {
        didSet {
            title.nameAndImageListText()
        }
    }
    
    @IBOutlet weak var mainImage: UIImageView! {
        didSet {
            mainImage.nameAndImageListImage()
        }
    }
    
    func fillValues(model: HomeModel) {
        title.text = model.value
        if let showImage = showImage {
            if showImage == true {
                mainImage.isHidden = true
            }
        }
    }
}
