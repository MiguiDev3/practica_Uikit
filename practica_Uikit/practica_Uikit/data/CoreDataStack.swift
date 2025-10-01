import CoreData

enum CoreDataStack {
    static let modelName = "practica_Uikit"
    
    static var persistentContainer: NSPersistentContainer {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores(completionHandler: { (description, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
        container.viewContext.automaticallyMergesChangesFromParent = true
        return container
    }
    
    static var context: NSManagedObjectContext { persistentContainer.viewContext }
    
    static func saveContext() {
        if context.hasChanges{
            do { try context.save()} catch { fatalError("Unresolved error: \(error)") }
                }
            }
}
    

