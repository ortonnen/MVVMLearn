//
//  ShopList.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 28/06/2021.
//

import Foundation
//MARK: - State Enum
public enum State {
    case complete
    case inProgress
}

//MARK: - Shopping List
final class ShoppingList {
    //MARK: Properties
    var title: String = ""
    var total: Int = 0
    var state: State = .inProgress
    var items = [Item]()
    
    //MARK: Public Methods
    ///check if shopping list is complete
    public func checkIfListIsComplete(for shopList: ShoppingList) -> Bool {
        for item in items {
            if item.itemSate != .complete {
                return false
            }
        }
        return true
    }
}

//MARK: - Item
final class Item {
    var itemSate: State
    var itemTitle: String
    var itemQuantity: Int
    
    init(itemSate: State, itemTitle: String, itemQuantity: Int) {
        self.itemSate = itemSate
        self.itemTitle = itemTitle
        self.itemQuantity = itemQuantity
    }
}
