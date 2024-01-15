//
//  BookmarkEntity+CoreDataProperties.swift
//  
//
//  Created by Jeri Purnama Maulid on 15/01/24.
//
//

import Foundation
import CoreData


extension BookmarkEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BookmarkEntity> {
        return NSFetchRequest<BookmarkEntity>(entityName: "BookmarkEntity")
    }

    @NSManaged public var title: String?
    @NSManaged public var url: String?
    @NSManaged public var id: UUID?

}

struct BookmarkFavoriteModel {
    let id = UUID()
    var title: String
    var url: String
    
    init(title: String, url: String) {
        self.title = title
        self.url = url
    }
}
