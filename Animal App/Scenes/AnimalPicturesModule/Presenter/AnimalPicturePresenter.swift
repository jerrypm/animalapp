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
    var animalName: String? {get set}

    func viewDidLoad()
    func addToBookmark(id: Int)
    func presentImagesData(imagesModel: ImageBaseModel)
}

class AnimalPicturePresenter: IAnimalPicturePresenter {
    var router: IAnimalPictureRouter?
    var interactor: IAnimalPictureInteractor?
    weak var view: IAnimalPictureViewController?

    var animalName: String?

    init(parameters: [String: Any]) {
        animalName = parameters["animal_name"] as? String
    }

    func viewDidLoad() {
        interactor?.fetchImageAnimal(animalName: animalName ?? .empty)
    }
    
    func addToBookmark(id: Int) {
        interactor?.addItemToFavorite(id: id)
    }
    
    func presentImagesData(imagesModel: ImageBaseModel) {
        if let photos = imagesModel.photos {
            view?.displayDataImages(images: photos)
        }
    }
}
