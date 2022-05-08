//
//  User+CoreDataProperties.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var email: String?
    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var pinjam: NSSet?

}

// MARK: Generated accessors for pinjam
extension User {

    @objc(addPinjamObject:)
    @NSManaged public func addToPinjam(_ value: Peminjaman)

    @objc(removePinjamObject:)
    @NSManaged public func removeFromPinjam(_ value: Peminjaman)

    @objc(addPinjam:)
    @NSManaged public func addToPinjam(_ values: NSSet)

    @objc(removePinjam:)
    @NSManaged public func removeFromPinjam(_ values: NSSet)

}

extension User : Identifiable {

}
