//
//  UITableView+TMTable.swift
//  Tournament
//
//  Created by Mayank Pahuja on 24/02/21.
//

import Foundation

import UIKit

extension UITableView {
    
    func reloadSafe()  {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    public func dequeue<T: UITableViewCell>(cellClass: T.Type = T.self, forIndexPath indexPath: IndexPath) -> T {
           guard let cell = dequeueReusableCell(
               withIdentifier: cellClass.reuseIdentifier, for: indexPath) as? T else {
                   fatalError(
                       "Error: cell with id: \(cellClass.reuseIdentifier) for indexPath: \(indexPath) is not \(T.self)")
           }
           return cell
       }

    public func dequeueHeader<T: UITableViewHeaderFooterView>(headerClass: T.Type) -> T {
        guard let header = self.dequeueReusableHeaderFooterView(withIdentifier: headerClass.reuseIdentifier)
            as? T else {
                fatalError(
                    "Error: header with id: \(headerClass.reuseIdentifier) is not \(T.self)")
        }
        return header
    }

    public func register<T: UITableViewCell>(cellClass: T.Type) {
        let nib = UINib(nibName: String(describing: cellClass), bundle: nil)
        register(nib, forCellReuseIdentifier: cellClass.reuseIdentifier)
    }

    public func registerHeader<T: UITableViewHeaderFooterView>(headerClass: T.Type) {
        let nib = UINib(nibName: String(describing: headerClass), bundle: nil)
        register(nib, forHeaderFooterViewReuseIdentifier: headerClass.reuseIdentifier)
    }
}

extension UITableViewCell {
    static var reuseIdentifier: String {
        return NSStringFromClass(self)
    }
}

extension UITableViewHeaderFooterView {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
