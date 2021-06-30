//
//  ShoppingListModelViewController.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 29/06/2021.
//

import UIKit

//MARK: - Shopping List View Model
final class ShoppingListViewModel {
    //MARK: Properties
    public let shopList = ShoppingList()
    public var itemsLists = [Item]()
    
}
//MARK:- Alert
extension ShoppingListViewModel {
    
    func addItem(_ title: String, _ message: String, _ buttonTitle: String, in tableView: UITableView) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { (textfield) in
            textfield.placeholder = "Item"
        }
        alert.addTextField { (textfield) in
            textfield.placeholder = "how much?"
        }
        
        let alerteAction = UIAlertAction(title: buttonTitle, style: .cancel){_ in
            let itemTextField = alert.textFields![0] as UITextField
            let quantityTextField = alert.textFields![1] as UITextField
            
            self.itemsLists.append(Item(itemSate: .inProgress, itemTitle: itemTextField.text ?? "" , itemQuantity: Int(quantityTextField.text ?? "") ?? 0))
            tableView.reloadData()
        }
        tableView.reloadData()
        alert.addAction(alerteAction)
        return alert
    }
    
}
