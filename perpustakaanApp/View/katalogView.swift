//
//  katalogView.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//

import SwiftUI
import CoreData

struct katalogView: View {
    
    @Environment(\.managedObjectContext) private var viewContext

        @FetchRequest(
            sortDescriptors: [NSSortDescriptor(keyPath: \Koleksi.id, ascending: true)],
            animation: .default)
        private var koleksis: FetchedResults<Koleksi>
    
    var body: some View {
        List {
             ForEach(koleksis) { koleksi in
                 NavigationLink {
                     //destination page isi text tok
                     Text(koleksi.wrapped_judul)
                 } label: {
                     katalogRow(koleksi: koleksi)
                 }
             }
//             .onDelete(perform: deleteItems)
         }
    }
}

struct katalogView_Previews: PreviewProvider {
    static var previews: some View {
        katalogView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
