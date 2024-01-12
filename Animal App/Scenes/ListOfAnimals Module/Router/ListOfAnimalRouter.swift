//
//  ListOfAnimalRouter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListOfAnimalRouter: AnyObject {
    func navigateToImageModule()
}

class ListOfAnimalRouter: IListOfAnimalRouter {
    weak var viewController: ListOfAnimalViewController?

    init(viewController: ListOfAnimalViewController) {
        self.viewController = viewController
    }

    func navigateToImageModule() {
        #warning("here")
    }
}
