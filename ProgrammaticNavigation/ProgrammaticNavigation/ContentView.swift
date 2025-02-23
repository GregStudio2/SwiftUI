//
//  ContentView.swift
//  ProgrammaticNavigation
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 18/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Text("Second View"), isActive: $isShowingDetailView) {
                    EmptyView()
                }
                Button("Tap to show detail"){
                    isShowingDetailView = true
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
