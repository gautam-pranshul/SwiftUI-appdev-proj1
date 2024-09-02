//
//  ListView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        ZStack{
            if listViewModel.items.isEmpty{
                NoItemView()
                    .transition(AnyTransition.opacity.animation(.easeIn(duration: 0.5)))
            } else {
                List {
                    ForEach(listViewModel.items) { item in
                        ListRowView(item: item)
                            .onTapGesture{
                                withAnimation(.linear){
                                    listViewModel.updateItem(item: item)
                                }
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItem)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(PlainListStyle())
            }
        }
        .navigationTitle("My List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListView()
                .environmentObject(ListViewModel()) // Provided the env obj here for preview
        }
    }
}

               


/*
 ZStack(alignment: .bottomTrailing) {
 
 //list here
 .navigationBarItems(
     trailing:
         EditButton()
)
 
 
Button {
     //action
 } label: {
     Image(systemName: "plus")
         .font(.title.weight(.semibold))
         .padding()
         .background(Color.accentColor)
         .foregroundColor(.white)
         .clipShape(Circle())

 }.padding(15)
 }
}
 */


