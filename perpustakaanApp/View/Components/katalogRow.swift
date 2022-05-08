//
//  katalogRow.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//

import SwiftUI

struct katalogRow: View {
    @ObservedObject var koleksi: Koleksi
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(koleksi.wrapped_judul)
                .font(.body)
            Text("By: \(koleksi.wrapped_pencipta)")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
        .padding(5)
    }
}

//struct katalogRow_Previews: PreviewProvider {
//    static var previews: some View {
//        katalogRow()
//    }
//}
