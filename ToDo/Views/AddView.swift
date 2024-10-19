//
//  AddView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import SwiftUI

struct AddView: View {
//    var colorTextField = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1) // color literal created because .colorLiteral was not working

    @EnvironmentObject var listViewModel : ListViewModel //observable obj for items array to update the todo

    @State var textfieldText: String = "" //variable for keeping the text from text field
    
    @Environment(\.presentationMode) var presentationMode // to make screen switch back to listView after we click save
    
    let secondaryAccentColor = Color("secondaryAccentColor")

    
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    @FocusState private var focus: Bool
    
    var body: some View {
        TabView{
            VStack{
                Spacer()
                HStack{
                    TextField("Get shit done!", text: $textfieldText, axis: .vertical)
                        .lineLimit(4)
                        .padding()
                        .background(Color(UIColor.secondarySystemBackground))
                        .clipShape(.rect(cornerRadius: 10))
                        .focused($focus)
                    
                    Button(action: saveOnClick,
                           label: {
                        Image(systemName: "plus")
//                        Text("Add")
                            .font(.title3.weight(.bold))
                            .padding()
                            .foregroundColor(.white)
                            .background(secondaryAccentColor)
                            .clipShape(.rect(cornerRadius: 15))
                    })

                }
                .onAppear(){
                    focus = true
                }
                .safeAreaPadding(.bottom,10)
            }.padding(.horizontal)
        }
        .navigationTitle("Add another task ✏️ ")
        .alert(isPresented: $showAlert , content: getAlert)
        
    }
    
    //SAVE BUTTON
    func saveOnClick(){
        if minLengthText(){  //checks for min length
            listViewModel.addItem(title: textfieldText.trimmingCharacters(in: .whitespacesAndNewlines))
            presentationMode.wrappedValue.dismiss() //tells presentation mode to go back in view heirarchy ie the home page ie listView
        }
    }
    
    //MIN LENGTH CHECK
    func minLengthText() -> Bool{
        if textfieldText.count < 4 {
            alertTitle = "Your new task must be atleast 5 characters"
            showAlert.toggle()
            return false //code wont reach here or even if it does then you wont see nothing cause alert pehele aa jaeyga screen pe and nothing will happen
        }
        return true
    }
    
    //ALERT FUNC IN CASE MIN LEN CHECK FAILS IT SHOWS ALERT
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}
#Preview {
    VStack{
        AddView()
    }
}
