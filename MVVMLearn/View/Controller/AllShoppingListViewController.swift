//
//  ViewController.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 22/06/2021.
//

import UIKit

final class AllShoppingListViewController: UIViewController {

    var viewModel = AllShoppingListViewModel()
    let vc = ShoppingListViewController()
    
    @IBOutlet weak var shoppingListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        vc.viewModel.shopList.title = viewModel.shopList.title
        print("VC1 \(viewModel.shopList.title)")
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
        return UITableViewCell()
    }
    
    
}
