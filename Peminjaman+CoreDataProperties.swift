//
//  Peminjaman+CoreDataProperties.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//
//

import Foundation
import CoreData


extension Peminjaman {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Peminjaman> {
        return NSFetchRequest<Peminjaman>(entityName: "Peminjaman")
    }

    @NSManaged public var tgl_pinjam: Date?
    @NSManaged public var max_kembali: Date?
    @NSManaged public var peminjam: User?
    @NSManaged public var koleksi: Koleksi?

}

extension Peminjaman : Identifiable {

}
