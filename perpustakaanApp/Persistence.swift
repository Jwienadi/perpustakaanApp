//
//  Persistence.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 07/05/22.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        
        for i in 0..<2 {
            let newKoleksi = Koleksi(context: viewContext)
            newKoleksi.judul = "testing title \(i+1)"
            newKoleksi.pencipta = "testing author \(i+1)"
            newKoleksi.isBorrowed = false
        }
        
        let newUser1 = User(context: viewContext)
        newUser1.email = "member@gmail.com"
        newUser1.password = "member123"
        newUser1.username = "member"
        
        let newUser2 = User(context: viewContext)
        newUser2.email = "admin@gmail.com"
        newUser2.password = "admin123"
        newUser2.username = "admin"
        
//        let pinjam1 = Peminjaman(context: viewContext)
//        pinjam1.koleksi = Koleksi(context: viewContext)
//        pinjam1.koleksi?.judul = "testing title 1"
//        pinjam1.koleksi?.pencipta = "testing author 1"
//        pinjam1.koleksi?.isBorrowed = true
//        let today = Date()
//        let deadline = Calendar.current.date(byAdding: .day, value: 7, to: today)!
//        pinjam1.tgl_pinjam = today
//        pinjam1.max_kembali = deadline
//        pinjam1.peminjam = User(context: viewContext)
//        pinjam1.peminjam?.email = "member@gmail.com"
//        pinjam1.peminjam?.password = "member123"
//        pinjam1.peminjam?.username = "member"
//
        do {
            try viewContext.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
        return result
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "perpustakaanApp")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
