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

    static func animalImageConfigureModule(param: [String: Any]) -> AnimalPictureViewController {
        let controller = AnimalPictureViewController()
        let router = AnimalPictureRouter(viewController: controller)
        let presenter = AnimalPicturePresenter(parameters: param)
        let apiService = APIService()

        let interactor = AnimalPictureInteractor(
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

    // MARK: Module Favorite

    static func favoriteConfigureModule() -> FavoriteViewController {
        let controller = FavoriteViewController()
        let router = FavoriteRouter(viewController: controller)
        let presenter = FavoritePresenter()
        let apiService = APIService()

        let interactor = FavoriteInteractor(
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
}
