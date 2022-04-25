//
//  ContentView.swift
//  SwiftUI VR
//
//  Created by Anton Pavlov on 25.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(animals) { animal in
                NavigationLink(destination: DetailView(animal: animal)) {
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("\(animal.title)")
                                .font(.system(size: 18, weight: .bold))
                            
                            Text("\(animal.subtitle)")
                        }
                        Spacer()
                        
                        Image(animal.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
            }
            .navigationBarTitle("Комплексы")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

var animals = [
    ListItem(title: "Жилой комплекс", subtitle: "Карякина", image: "Дом"),
    ListItem(title: "Жилой комплекс", subtitle: "Краснодар", image: "Дома"),
    ListItem(title: "Жилой комплекс", subtitle: "Кубанский", image: "Домаа")]

