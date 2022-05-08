//
//  loginView.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 07/05/22.
//

import SwiftUI

struct loginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            TextField("Email", text: self.$email)
                .padding()
                .background(.quaternary)
                .cornerRadius(5)
            TextField("Password", text: self.$password)
                .padding()
                .background(.quaternary)
                .cornerRadius(5)
            Button("Sign In") {}
                .padding()
        }
        .padding()
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
