//
//  AddView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import SwiftUI

struct AddView: View {
    var colorTextField = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1) // color literal created because .colorLiteral was not working

    @EnvironmentObject var listViewModel : ListViewModel //observable obj for items array to update the todo

    @State var textfieldText: String = "" //variable for keeping the text from text field
    
    @Environment(\.presentationMode) var presentationMode // to make screen switch back to listView after we click save
    
    var body: some View {
        TabView{
            ZStack{
                NavigationStack{
                    Spacer()
                    TextField("Get shit done!", text: $textfieldText)
                        .padding(.horizontal)
                        .frame(height: 50)
                        .background(Color(colorTextField))
                        .cornerRadius(10)
                    
                    
                    Button(action: saveOnClick,
                           label: {
                        Text("SAVE")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
                }
            }.padding(.horizontal)
            
        }
        .navigationTitle("Add another task ✏️ ")
        
    }
    func saveOnClick(){
        listViewModel.addItem(title: textfieldText)
        presentationMode.wrappedValue.dismiss() //tells presentation mode to go back in view heirarchy ie the home page which is the list view
    }
}
#Preview {
    NavigationView{
        AddView()
    }
}
