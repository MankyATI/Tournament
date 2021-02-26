//
//  UIImageView+TMImageView.swift
//  Tournament
//
//  Created by Mayank Pahuja on 25/02/21.
//

import Foundation
import UIKit

extension UIImageView {
    func nameAndImageListImage() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
