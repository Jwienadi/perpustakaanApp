//
//  katalogViewModel.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//

import Foundation
import CoreData

class katalogViewModel: ObservableObject {

let container: NSPersistentContainer

@Published var savedKoleksi: [Koleksi] = []

init() {
    container = NSPersistentContainer(name: "perpustakaanApp") //exactname of the CoreData file
    container.loadPersistentStores { (description, error) in
        if let error = error {
            fatalError("Error: \(error.localizedDescription)")
        }
    }
}

func getData() {
    let request = NSFetchRequest<Koleksi>(entityName: "Koleksi") //exact name as in the CoreData file
    
    do {
        try savedKoleksi = container.viewContext.fetch(request)
        
    } catch {
        print("Error getting data. \(error.localizedDescription)")
    }
    
}

func addData(judul: String, pencipta: String, foto: Data) {
    let newKatalog = Koleksi(context: container.viewContext)
    newKatalog.judul = judul
    newKatalog.pencipta = pencipta
    if foto.isEmpty {
        newKatalog.foto = nil
    } else {
        newKatalog.foto = foto
    }
    saveData()
}

func saveData() {
    do {
        try container.viewContext.save()
        getData() //to update the published variable to reflect this change
    } catch let error {
        print("Error: \(error)")
    }
}
}
