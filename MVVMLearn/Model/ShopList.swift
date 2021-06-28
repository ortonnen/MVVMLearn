//
//  ShopList.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 28/06/2021.
//

import Foundation

public enum State {
    case complete
    case inProgress
}

final class shoppingList {
    
    var title: String = ""
    var total: Int = 0
    var state: State = .inProgress
    var items = [Item]()
    
    public func checkIfListIsComplete() -> Bool {
        for item in items {
            if item.itemSate != .complete {
                return false
            }
        }
        return true
    }
    
}

final class Item {
    var itemSate: State = .inProgress
    var itemTitle: String = ""
    var itemQuantity: Int = 0
}
