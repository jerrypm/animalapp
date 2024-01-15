//
//  AnimalPictureViewController.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import UIKit

protocol IAnimalPictureViewController: AnyObject {
    func displayDataImages(images: [ImagePhotos])
}

class AnimalPictureViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var presenter: IAnimalPicturePresenter?
    var imageList = [ImagePhotos]()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        setupTable()
        title = presenter?.animalName
    }

    private func setupTable() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerNib(PictureTableViewCell.self)
        tableView.rowHeight = UITableView.automaticDimension
    }
}

extension AnimalPictureViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(PictureTableViewCell.self, for: indexPath)
        cell.delegate = self
        cell.handleImageUrl(data: imageList[indexPath.row])
        return cell
    }
}

extension AnimalPictureViewController: IAnimalPictureViewController, PictureDelegate {
    func displayDataImages(images: [ImagePhotos]) {
        imageList = images
        tableView.reloadData()
    }
    
    func likePicture(id: Int) {
        presenter?.addToBookmark(id: id)
    }
}
