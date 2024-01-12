//
//  ModuleConfigurator.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import UIKit

enum ModuleConfigurator {
    // MARK: Module List animal

    static func ListOfAnimalConfigureModule() -> ListOfAnimalViewController {
        let controller = ListOfAnimalViewController()
        let router = ListOfAnimalRouter(viewController: controller)
        let presenter = ListOfAnimalPresenter()
        let apiService = APIService()

        let interactor = ListOfAnimalInteractor(
            presenter: presenter,
            apiService: apiService
        )

        presenter.view = controller
        presenter.interactor = interactor
        presenter.router = router

        controller.presenter = presenter
        interactor.presenter = presenter
        router.viewController = controller

        return controller
    }

    // MARK: Module Image

    static func animalImageConfigureModule() -> ViewController {
        let controller = ViewController()
        return controller
    }

    // MARK: Module Favorite
    static func favoriteConfigureModule() -> ViewController {
        let controller = ViewController()
        return controller
    }
}
