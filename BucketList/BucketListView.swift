//
//  BucketListView.swift
//  BucketList
//
//  Created by Erika C. Matesz Bueno on 11/12/22.
//

import SwiftUI

struct BucketListView: View {
    
    @State private var itemList = ItemsViewModel().items
    @State private var showingAlert = false
    @State private var showingSheet = false
    @State private var randomItemTitle = ""

    var body: some View {
        NavigationView {
            List {
                Section(footer: Text("Swipe left to mark as done!")) {
                    ForEach($itemList) { $item in
                        Text("\(item.category.rawValue) \(item.title)")
                            .strikethrough(item.isDone, color: .red)
                            .swipeActions {
                                if !item.isDone {
                                    Button { item.isDone.toggle() }
                                label: {
                                    Label("Done", systemImage: "checkmark.circle.fill")
                                }
                                .tint(.green)
                                }
                            }
                    }
                }
            }
            .navigationTitle("Bucket List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button { showingAlert = true }
                label: {
                    Label("Pick Random", systemImage: "wand.and.stars")
                }
                .tint(.pink)
                .alert(ItemManager.getRandomItemTitle(from: itemList), isPresented: $showingAlert) {
                    Button("Got it!", role: .cancel) { }
                }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showingSheet.toggle()
                    }
                label: {
                    Label("Add Item", systemImage: "plus.circle")
                }
                .tint(.pink)
                .sheet(isPresented: $showingSheet) {
                    AddNewItemSheetView()
                }
                }
            }
        }
    }
}

struct BucketListView_Previews: PreviewProvider {
    static var previews: some View {
        BucketListView()
    }
}
