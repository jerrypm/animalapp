//
//  ListOfAnimalRouter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListOfAnimalRouter: AnyObject {
    func navigateToImageModule(data: AnimalBaseModel)
}

class ListOfAnimalRouter: IListOfAnimalRouter {
    weak var viewController: ListOfAnimalViewController?

    init(viewController: ListOfAnimalViewController) {
        self.viewController = viewController
    }

    func navigateToImageModule(data: AnimalBaseModel) {
        let module = ModuleConfigurator.animalImageConfigureModule(param: ["animal_name" : data.name ?? .empty])
        viewController?.navigationController?.pushViewController(module, animated: true)
    }
}
