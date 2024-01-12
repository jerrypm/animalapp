//
//  FavoritePresenter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IFavoritePresenter: AnyObject {
    var router: IFavoriteRouter? { get set }
    var interactor: IAnimalPictureInteractor? { get set }
    var view: IFavoriteViewController? { get set }

    func viewDidLoad()
}

class FavoritePresenter: IFavoritePresenter {
    var router: IFavoriteRouter?
    var interactor: IAnimalPictureInteractor?

    weak var view: IFavoriteViewController?

    func viewDidLoad() {
        #warning("here")
    }
}
