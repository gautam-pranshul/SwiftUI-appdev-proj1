//
//  ItemModel.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import Foundation

//immutable struct thats why all these are let constants
struct ItemModel: Identifiable{
    let id: String
    let title : String
    let iscomplete : Bool
    
    init(id: String = UUID().uuidString, title: String, iscomplete: Bool) {
        self.id = id
        self.title = title
        self.iscomplete = iscomplete
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id: id, title: title, iscomplete: !iscomplete)
    }
}
//two type of inits for item model
//ItemModel(title: String, iscomplete: <#T##Bool#>) // when creating a new entry -> id get assigned automatically
//ItemModel(id: <#T##String#>, title: <#T##String#>, iscomplete: <#T##Bool#>) //when updating an prexisting item we provide an id
// in 2nd approach a new object will be created but will have the same id so db will manage
