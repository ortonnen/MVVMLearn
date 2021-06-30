//
//  ShoppingListViewController.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 28/06/2021.
//

import UIKit

final class ShoppingListViewController: UIViewController {
    
    var viewModel = ShoppingListViewModel()
    
    @IBOutlet weak var titleListLabel: UILabel!
    @IBOutlet weak var itemTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleListLabel.text = viewModel.shopList.title
        itemTableView.reloadData()
    }
    
    @IBAction func tappedAddItemButton(_ sender: Any) {
        self.present(viewModel.addItemAlert("Add Item", "", "Add", in: itemTableView), animated: true, completion: nil)
    }
    
    @IBAction func tappedSavedListButton(_ sender: Any) {
        viewModel.savedList()
        self.navigationController?.popViewController(animated: true)
    }
}

extension ShoppingListViewController: UITableViewDelegate {
    
}

extension ShoppingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.itemsLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        cell.textLabel?.text = viewModel.itemsLists[indexPath.row].itemTitle
        cell.detailTextLabel?.text = String(viewModel.itemsLists[indexPath.row].itemQuantity)
        return cell
    }
}


