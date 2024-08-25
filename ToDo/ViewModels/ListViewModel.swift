//
//  ListViewModel.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items : [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "this is 1st", iscomplete: false),
            ItemModel(title: "this is 2nd", iscomplete: false),
            ItemModel(title: "this is 3rd", iscomplete: true)
            ]
        items.append(contentsOf: newItems)
        
    }
    
    func deleteItem(indexSet : IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem ( from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String){
        let newItem = ItemModel(title: title, iscomplete: false)
        items.append(newItem)
    }
    
}
