//
//  FavoriteRouter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IFavoriteRouter: AnyObject {}

class FavoriteRouter: IFavoriteRouter {
    weak var viewController: FavoriteViewController?

    init(viewController: FavoriteViewController) {
        self.viewController = viewController
    }
}
