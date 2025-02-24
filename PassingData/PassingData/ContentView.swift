//
//  ContentView.swift
//  PassingData
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 23/09/22.
//

import SwiftUI

struct ContentView: View {
    
    // string variable to store search query
    @State var searchedText: String = ""
    
    // boolean variable to show search view
    @State var showSearch: Bool = false
    
    var body: some View {
        // create textfield for search
        
        // to move to another view, main view must be wrapped in navigation view
        
        NavigationView{
        
        VStack{
            
            // goto search view
            NavigationLink(destination: SearchView(searchedText: $searchedText), isActive: $showSearch) {
                EmptyView()
            }
            
            TextField("Search here...", text: $searchedText, onCommit: {
                // this will be called when the search is clicked
                self.showSearch = true
            })
                .padding(8)
                .keyboardType(.webSearch)
                .background(Color(.systemGray6))
                .disableAutocorrection(true)
                .cornerRadius(5)
        }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
