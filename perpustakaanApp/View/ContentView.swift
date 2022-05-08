//
//  ContentView.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 07/05/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
//    @Environment(\.managedObjectContext) private var viewContext

//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

    var body: some View {
        NavigationView {
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
            VStack(alignment: .center){
                Text("Aplikasi perpustakaan")
                    .padding()
                    .font(.headline)
            Button {
                print("Button was tapped")
            } label: {
                Image(systemName: "person")
                Text("Member login")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.blue)

            Button {
                print("Button was tapped")
            } label: {
                Image(systemName: "lock")
                Text("Admin Login")
                    
            }
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(.orange)
                
        Spacer()
        }
        .fixedSize(horizontal: true, vertical: true)
        .navigationTitle("Log In")
        }
    }

   
}

//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
