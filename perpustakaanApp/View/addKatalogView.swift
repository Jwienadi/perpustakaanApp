//
//  addKatalogView.swift
//  perpustakaanApp
//
//  Created by Jessica Wienadi on 08/05/22.
//

import SwiftUI

struct addKatalogView: View {
    @Environment(\.managedObjectContext) var viewContext
    @StateObject private var viewModel = katalogViewModel()
    
    //image vars
    @State private var showImage: Bool = false
    @State private var isShowingImagePicker: Bool = false
    @State private var sourceType : UIImagePickerController.SourceType = .photoLibrary
    @State private var isIngPasteViewPresented = false
    
    
    
    var body: some View {
        //MARK: IMAGE
         if viewModel.image.count != 0 {
             
             Button(action: {
                 
                 self.isShowingImagePicker.toggle()
                 
             }) {
                 //view ipad masih uglyyy too wide
                 Image(uiImage: UIImage(data: viewModel.image)!)
                     .renderingMode(.original)
                     .resizable()
                     .frame(maxWidth: .infinity)
                 //                        .scaledToFill()
                 //                        .aspectRatio(contentMode: .fill)
                     .frame(height: 200)
                     .padding(.bottom)
                 //                        .cornerRadius(10)
                 //                        .shadow(color: Color("light"), radius: 10, x: -10, y: -10)
                 //                        .shadow(color: Color("dark"), radius: 10, x: 10, y: 10)
                 
             }
             .actionSheet(isPresented: self.$isShowingImagePicker) {
                 ActionSheet(title: Text("Select anyone"), message: Text("Please select one of the option."), buttons: [.default(Text("Camera")) {
                     self.sourceType = .camera
                     self.showImage.toggle()
                     
                     
                 }, .default(Text("PhotoLibrary")) {
                     self.sourceType = .photoLibrary
                     self.showImage.toggle()
                     
                 },  .cancel()])
             }
         } else {
             
             Button(action: {
                 
                 self.isShowingImagePicker.toggle()
                 
             }) {
                 Image(uiImage: UIImage(named: "default")!)
                     .resizable()
                     .scaledToFill()
                     .frame(maxWidth: .infinity, maxHeight: 200)
                 //                    .frame(height: 200)
                     .padding(.bottom)
                 //                    .cornerRadius(10)
                 //                    .shadow(color: Color("light"), radius: 10, x: -10, y: -10)
                 //                    .shadow(color: Color("dark"), radius: 10, x: 10, y: 10)
             }
             .actionSheet(isPresented: self.$isShowingImagePicker) {
                 ActionSheet(title: Text("Select anyone"), message: Text("Please select one of the option."), buttons: [.default(Text("Camera")) {
                     self.sourceType = .camera
                     self.showImage.toggle()
                     
                     
                 }, .default(Text("PhotoLibrary")) {
                     self.sourceType = .photoLibrary
                     self.showImage.toggle()
                     
                 },  .cancel()])
             }
         }
    }
}

struct addKatalogView_Previews: PreviewProvider {
    static var previews: some View {
        addKatalogView()
    }
}
