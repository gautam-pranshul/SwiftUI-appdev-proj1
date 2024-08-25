//
//  ToDoApp.swift
//  ToDo
//
//  Created by Pranshul Gautam on 24/08/24.
//

/*
 mvm ->
 model: data points
 view: UI
 view-model: manages views as per model
 */

import SwiftUI

@main
struct ToDoApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
