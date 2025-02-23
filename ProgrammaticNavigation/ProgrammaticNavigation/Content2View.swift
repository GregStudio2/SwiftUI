//
//  Content2View.swift
//  ProgrammaticNavigation
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 18/09/22.
//

import SwiftUI

struct Content2View: View {
    
    @State private var selection: String? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Text("View A"), tag: "A", selection: $selection){
                    EmptyView()
                }
                NavigationLink(destination: Text("View B"), tag: "B", selection: $selection){
                    EmptyView()
                }
                
                Button("Tap to show A"){
                    selection = "A"
                }
                
                Button("Tap to show B"){
                    selection = "B"
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct Content2View_Previews: PreviewProvider {
    static var previews: some View {
        Content2View()
    }
}
