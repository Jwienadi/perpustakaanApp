//
//  Koleksi+CoreDataProperties.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//
//

import Foundation
import CoreData


extension Koleksi {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Koleksi> {
        return NSFetchRequest<Koleksi>(entityName: "Koleksi")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var judul: String?
    @NSManaged public var pencipta: String?
    @NSManaged public var isBorrowed: Bool
    @NSManaged public var foto: Data?
    @NSManaged public var pinjam: NSSet?
    
    public var wrapped_judul: String {
        judul ?? "Unknown Judul"
    }
    public var wrapped_pencipta: String {
        pencipta ?? "Unknown Pencipta"
    }

    
}

// MARK: Generated accessors for pinjam
extension Koleksi {

    @objc(addPinjamObject:)
    @NSManaged public func addToPinjam(_ value: Peminjaman)

    @objc(removePinjamObject:)
    @NSManaged public func removeFromPinjam(_ value: Peminjaman)

    @objc(addPinjam:)
    @NSManaged public func addToPinjam(_ values: NSSet)

    @objc(removePinjam:)
    @NSManaged public func removeFromPinjam(_ values: NSSet)

}

extension Koleksi : Identifiable {

}
