//
//  FavoriteViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import UIKit

protocol IFavoriteViewController: AnyObject {}

class FavoriteViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var presenter: IFavoritePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension FavoriteViewController: IFavoriteViewController {}
