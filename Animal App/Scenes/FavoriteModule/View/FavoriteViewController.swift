//
//  FavoriteViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import UIKit

protocol IFavoriteViewController: AnyObject {
    func displayAnimalList(data: [BookmarkEntity])
}

class FavoriteViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    var presenter: IFavoritePresenter?
    var dataModel: [BookmarkEntity]?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = SC.titleFavorite.rawValue
        presenter?.viewDidLoad()
        setupTable()
        setupNotif()
    }

    private func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerNib(FavoriteTableViewCell.self)
        tableView.rowHeight = UITableView.automaticDimension
    }

    private func setupNotif() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleBookmarkDataUpdated), name: .bookmarkDataUpdated, object: nil)
        BookmarkDataService.shared.getBookmark()
    }

    deinit {
        NotificationCenter.default.removeObserver(self, name: .bookmarkDataUpdated, object: nil)
    }

    @objc private func handleBookmarkDataUpdated() {
        presenter?.viewDidLoad()
    }
}

extension FavoriteViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel?.count ?? .zero
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(FavoriteTableViewCell.self, for: indexPath)
        if let data = dataModel?[indexPath.row] {
            cell.favoriteImage(data: data)
        }
        return cell
    }
}

extension FavoriteViewController: IFavoriteViewController {
    func displayAnimalList(data: [BookmarkEntity]) {
        dataModel = data
        tableView.reloadData()
    }
}
