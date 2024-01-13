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
    func presentImagesData(imagesModel: ImageBaseModel)
}

class AnimalPicturePresenter: IAnimalPicturePresenter {
    var router: IAnimalPictureRouter?
    var interactor: IAnimalPictureInteractor?
    weak var view: IAnimalPictureViewController?

    var param: String?

    init(parameters: [String: Any]) {
        param = parameters["animal_name"] as? String
    }

    func viewDidLoad() {
        interactor?.fetchImageAnimal(animalName: param ?? .empty)
    }
    
    func presentImagesData(imagesModel: ImageBaseModel) {
        if let photos = imagesModel.photos {
            view?.displayDataImages(images: photos)
        }
    }
}
