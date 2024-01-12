//
//  ListAnimalViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import UIKit

protocol IListAnimalViewController: AnyObject {}

class ListAnimalViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListAnimalViewController: IListAnimalViewController {}
