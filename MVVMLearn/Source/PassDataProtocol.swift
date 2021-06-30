//
//  PassDataProtocol.swift
//  MVVMLearn
//
//  Created by Nathalie Simonnet on 29/06/2021.
//

import UIKit

//MARK: Protocol
protocol PassingDataDelegateProtocol: UIViewController {
    func updateStringData(for String: String)
}

//MARK: Extension Protocol
extension PassingDataDelegateProtocol {
    func updateStringData(for String: String) {}
}
