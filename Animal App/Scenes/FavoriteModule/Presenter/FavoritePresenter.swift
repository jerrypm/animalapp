//
//  FavoritePresenter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IFavoritePresenter: AnyObject {
    var router: IFavoriteRouter? { get set }
    var interactor: IFavoriteInteractor? { get set }
    var view: IFavoriteViewController? { get set }

    func viewDidLoad()
    func presentListFavorite(data: [BookmarkEntity])
}

class FavoritePresenter: IFavoritePresenter {
    var router: IFavoriteRouter?
    var interactor: IFavoriteInteractor?

    weak var view: IFavoriteViewController?

    func viewDidLoad() {
        interactor?.loadLocaldata()
    }
    
    func presentListFavorite(data: [BookmarkEntity]) {
        //
    }
}
