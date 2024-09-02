//
//  NoItemView.swift
//  ToDo
//
//  Created by Pranshul Gautam on 01/09/24.
//

import SwiftUI

struct NoItemView: View {
    @State var animate : Bool = false
    let secondaryAccentColor = Color("secondaryAccentColor")
    
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("To add a new task click on ADD \n If you can do this task under 2 min \n then DO IT NOW ")
                    .padding(.bottom,20)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add a task 🧑‍💻")
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, idealHeight: 55)
                            .background(animate ? Color.accentColor : Color.indigo)
                            .clipShape(RoundedRectangle.init(cornerRadius: 10))
                    })
                .padding(.horizontal, animate ? 60 : 65)
                .shadow(color: animate ? Color.indigo.opacity(0.7) : Color.accentColor.opacity(0.6),
                        radius: animate ? 25 : 10, 
                        x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, 
                        y: animate ? 20 : 7)
                .scaleEffect(animate ? 1.05 : 1)
                .offset(y: animate ? -2 : 1)
                
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: doAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    func doAnimation(){
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            withAnimation( Animation.easeInOut(duration: 1.5).repeatForever() ){
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
