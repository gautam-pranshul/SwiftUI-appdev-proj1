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
    
    func updateItem(item: ItemModel){
//        if let index = items.firstIndex { (prexistingItem) -> Bool in //using if is a good practice
//            return prexistingItem.id == item.id
//        } {
//            //code
//        }
        
//        if let index = items.firstIndex(where: { $0.id == item.id }){ //better way to write this, $0 is something running over prexisting items
//            items[index] = ItemModel(title: item.title, iscomplete: !item.iscomplete) 
//              toggling the completion status
//            but a new item mode will be created because of default initialiser of itemModel and although title n everything will be the same but a new uuid will be created and our db entry may get affected (if we choose any db in future
//        }
        
        if let index = items.firstIndex(where: { $0.id == item.id }){ //better way to write this, $0 is something running over prexisting items
            items[index] = item.updateCompletion() //from ItemModel.swift
        }
    }
    
}
