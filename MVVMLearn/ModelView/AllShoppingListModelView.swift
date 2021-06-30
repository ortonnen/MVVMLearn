//
//  AllShoppingListModelView.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 28/06/2021.
//

import UIKit

//MARK: - All Shopping List View Model
final class AllShoppingListViewModel {
    //MARK: Properties
    public let shopLists = [ShoppingList]()
    public let shopList = ShoppingList()
    
    //MARK: Public Methods
    
}
//MARK:- Alert
extension AllShoppingListViewModel {
    /// alerte with Text Field
    func textFieldAlerte(_ title: String, _ message: String, _ buttonTitle: String,from curentVC: UIViewController, to nextController: UIViewController) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addTextField { (textfield) in
            textfield.placeholder = "Enter title"
        }
       
        let alerteAction = UIAlertAction(title: buttonTitle, style: .cancel){_ in
            let textField = alert.textFields![0] as UITextField
            self.shopList.title = textField.text ?? "Name"
           
            curentVC.performSegue(withIdentifier: "NLButtonToShoppingListVC", sender: self)
        }
        alert.addAction(alerteAction)
        return alert
    }
}

