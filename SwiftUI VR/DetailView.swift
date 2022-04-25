//
//  DetailView.swift
//  SwiftUI VR
//
//  Created by Anton Pavlov on 25.04.2022.
//

import SwiftUI

struct DetailView: View {
    var animal: ListItem = animals[0]
    @State var showPopup = false
    
    var body: some View {
        VStack (alignment: .leading){
            Image(animal.image)
                .resizable()
                .frame(width: 350, height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .onTapGesture {
                    showPopup.toggle()
                }
                .sheet(isPresented: $showPopup, content: {
                    PopupView()
                })
            
            Text(animal.title)
                .font(.title)
            Text(animal.subtitle)
                .font(.subheadline)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: animals[0])
    }
}

