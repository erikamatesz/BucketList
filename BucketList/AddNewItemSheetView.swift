//
//  AddNewItemSheetView.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import SwiftUI

struct AddNewItemSheetView: View {
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var selectedCategory: Category = .default

    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Spacer(minLength: 30)
                Text("Add a new item to your Bucket List:")
                    .font(.headline)
                Spacer(minLength: 10)
                TextField("What would you like to do?", text: $title)
                    .textFieldStyle(.plain)
                    .padding()
                List (Category.allCases) { category in
                    Text("\(category.rawValue) \(String(describing: category))")
                        .contentShape(Rectangle())
                        .onTapGesture {
                            // Não está pegando a categoria selecionada
                            selectedCategory = category
                        }
                }
            }
        }
        Button("Add to the list!") {
            // Como eu passo isso pro VM?
            let newItem = Item(title: title, category: selectedCategory)
            dismiss()
        }
        .padding()
    }
}
