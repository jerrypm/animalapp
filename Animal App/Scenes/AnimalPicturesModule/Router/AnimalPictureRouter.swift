//
//  AnimalPictureRouter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IAnimalPictureRouter: AnyObject {
    func navigateToImageModule()
}

class AnimalPictureRouter: IAnimalPictureRouter {
    weak var viewController: AnimalPictureViewController?

    init(viewController: AnimalPictureViewController) {
        self.viewController = viewController
    }

    func navigateToImageModule() {
        #warning("here")
    }
}
