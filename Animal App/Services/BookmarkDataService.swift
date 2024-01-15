//
//  BookmarkDataService.swift
//  Animal App
//
//  Created by Jeri Purnama Maulid on 15/01/24.
//

import CoreData
import Foundation

class BookmarkDataService {
    static let shared = BookmarkDataService()
    
    private let container: NSPersistentContainer
    private let containerName: String = "BookmarkModel"
    private let entityName: String = "BookmarkEntity"

    var savedEntities: [BookmarkEntity] = []

    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Core Data! \(error)")
            }
            self.getBookmark()
        }
    }

    func getBookmark() {
        let request = NSFetchRequest<BookmarkEntity>(entityName: entityName)
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch {
            print("Error fetching Bookmark Entities. \(error)")
        }
    }

    func add(name: String, url: String) {
        let entity = BookmarkEntity(context: container.viewContext)
        entity.title = name
        entity.url = url
        applyChanges()
    }

    func delete(entity: BookmarkEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }

    private func applyChanges() {
        save()
        getBookmark()
    }

    private func save() {
        do {
            try container.viewContext.save()
        } catch {
            print("Error saving to Core Data. \(error)")
        }
    }
}
