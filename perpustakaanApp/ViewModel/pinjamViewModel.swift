//
//  pinjamViewModel.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 07/05/22.
//

import Foundation
import CoreData

class pinjamViewModel: ObservableObject {
    
    

private func addItem(context: NSManagedObjectContext) {
//    withAnimation {
//        let newItem = Item(context: viewContext)
//        newItem.timestamp = Date()

        do {
            try context.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
//    }
}

private func deleteItems(offsets: IndexSet, context: NSManagedObjectContext) {
//    withAnimation {
//        offsets.map { items[$0] }.forEach(viewContext.delete)

        do {
            try context.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
//    }
}
    
    
}
