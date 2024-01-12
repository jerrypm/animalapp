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

    func presentAnimalList(list: [String])
    func viewDidLoad()
}

class ListOfAnimalPresenter: IListOfAnimalPresenter {
    var router: IListOfAnimalRouter?
    var interactor: IListOfAnimalInteractor?

    weak var view: IListOfAnimalViewController?

    func viewDidLoad() {
        interactor?.getAnimalList()
    }

    func presentAnimalList(list: [String]) {
        view?.displayAnimalList(list: list)
    }
}
