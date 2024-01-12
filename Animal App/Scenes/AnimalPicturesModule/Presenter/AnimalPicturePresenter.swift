//
//  AnimalPicturePresenter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IAnimalPicturePresenter: AnyObject {
    var router: IAnimalPictureRouter? { get set }
    var interactor: IAnimalPictureInteractor? { get set }
    var view: IAnimalPictureViewController? { get set }

    func viewDidLoad()
}

class AnimalPicturePresenter: IAnimalPicturePresenter {
    var router: IAnimalPictureRouter?
    var interactor: IAnimalPictureInteractor?

    weak var view: IAnimalPictureViewController?

    func viewDidLoad() {
        #warning("here")
    }
}
