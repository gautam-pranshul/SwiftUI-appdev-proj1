//
//  ItemModel.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title : String
    let iscomplete : Bool
}
