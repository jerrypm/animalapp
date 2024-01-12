//
//  ListOfAnimalViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import UIKit

protocol IListOfAnimalViewController: AnyObject {
    func displayAnimalList(list: [String])
}

class ListOfAnimalViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var presenter: IListOfAnimalPresenter?
    var animalList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
        presenter?.viewDidLoad()
    }

    private func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ListOfAnimalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = animalList[indexPath.row]
        return cell
    }
}

extension ListOfAnimalViewController: IListOfAnimalViewController {
    func displayAnimalList(list: [String]) {
        animalList = list
        tableView.reloadData()
    }
}
