//
//  NoItemView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 01/09/24.
//

import SwiftUI

struct NoItemView: View {
    @State var animate : Bool = false
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Hey! feeling productive ?? \n To add a new task click on ADD button ")
                Text("(But if you can do this task under 2 minutes, then try not to add it in the list)")
                    .fontWeight(.thin)
                    .padding(.bottom,20)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Get shit done! 🧑‍💻🧑‍💻")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, idealHeight: 55)
                            .background(animate ? Color.red : Color.accentColor)
                            .clipShape(RoundedRectangle.init(cornerRadius: 10))
                    }
                )
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: doAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func doAnimation(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            withAnimation(.easeInOut){
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationStack{
        NoItemView()
            .navigationTitle("todo")
    }
}
