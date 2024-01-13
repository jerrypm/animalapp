//
//  ListOfAnimalViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 10/01/24.
//

import UIKit

protocol IListOfAnimalViewController: AnyObject {
    func displayAnimalList(list: [AnimalBaseModel])
}

class ListOfAnimalViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var presenter: IListOfAnimalPresenter?
    var animalList = [AnimalBaseModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = SC.titleListAnimal.rawValue
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        setupTable()
        presenter?.viewDidLoad()
    }

    private func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerNib(ListTableViewCell.self)
        tableView.rowHeight = 64
    }
}

extension ListOfAnimalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(ListTableViewCell.self, for: indexPath)
        cell.nameLabel.text = animalList[indexPath.row].name
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedAnimal = animalList[indexPath.row]
        presenter?.router?.navigateToImageModule(data: selectedAnimal)
    }
}

extension ListOfAnimalViewController: IListOfAnimalViewController {
    func displayAnimalList(list: [AnimalBaseModel]) {
        animalList = list
        tableView.reloadData()
    }
}
