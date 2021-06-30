//
//  ViewController.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 22/06/2021.
//

import UIKit

final class AllShoppingListViewController: UIViewController {

    var viewModel = AllShoppingListViewModel()
    
    
    @IBOutlet weak var shoppingListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingListTableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        viewModel.updateView(for: shoppingListTableView)
    }

    @IBAction func createListeTappedButton(_ sender: Any) {
        self.present(viewModel.textFieldAlerte("Create New List", "Please enter title for your list", "ok", from: self, to: ShoppingListViewController()), animated: true, completion: nil)
    }
}

extension AllShoppingListViewController: UITableViewDelegate {
    
}

extension AllShoppingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModel.shopLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shopCell", for: indexPath)
        
        cell.textLabel?.text = viewModel.shopList.title
        
        return cell
    }
    
    
}
