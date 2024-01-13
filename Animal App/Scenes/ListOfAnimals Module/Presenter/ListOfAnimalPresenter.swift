//
//  ListOfAnimalPresenter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListOfAnimalPresenter: AnyObject {
    var router: IListOfAnimalRouter? { get set }
    var interactor: IListOfAnimalInteractor? { get set }
    var view: IListOfAnimalViewController? { get set }

    func viewDidLoad()
    func fetchAnimalfromType(animal: AnimalType)
    func presentAnimalList(list: [AnimalBaseModel])
}

class ListOfAnimalPresenter: IListOfAnimalPresenter {
    var router: IListOfAnimalRouter?
    var interactor: IListOfAnimalInteractor?

    weak var view: IListOfAnimalViewController?

    func viewDidLoad() {
        interactor?.fetchAnimalList()
    }

    func fetchAnimalfromType(animal: AnimalType) {
        interactor?.fetchAnimalfromType(animal: animal)
    }

    func presentAnimalList(list: [AnimalBaseModel]) {
        view?.displayAnimalList(list: list)
    }
}
