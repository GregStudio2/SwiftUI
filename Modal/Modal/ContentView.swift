//
//  ContentView.swift
//  Modal
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 18/09/22.
//

import SwiftUI

struct ContentView: View {
    
    // 1.
    @State private var showModal = false
    
    var body: some View {
        Button("Show Modal") {
            // 2.
            self.showModal.toggle()
            // 3.
        }.sheet(isPresented: $showModal){
            ModalView(showModal: self.$showModal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
