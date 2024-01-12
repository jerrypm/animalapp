//
//  ListAnimalPresenter.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 12/01/24.
//

import Foundation

protocol IListAnimalPresenter: AnyObject {}

class ListAnimalPresenter: IListAnimalPresenter {
    weak var view: IListAnimalViewController?
}
