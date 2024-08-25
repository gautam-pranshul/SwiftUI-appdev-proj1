//
//  ListRowView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 25/08/24.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel

    var body: some View {
        
        HStack{
            Image(systemName: item.iscomplete ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.iscomplete ? .green : .red)
            Text(item.title)
            Spacer()
        }.font(.title2)
            .padding(.vertical, 6)
    }
}

struct ListRowViews_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "1st", iscomplete: true)
    static var item2 = ItemModel(title: "2nd", iscomplete: false)
    
    static var previews: some View{
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }.previewLayout(.sizeThatFits)
    }
}
