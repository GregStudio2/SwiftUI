//
//  ModalView.swift
//  Modal
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 18/09/22.
//

import SwiftUI

struct ModalView: View {
    // 1.
    @Binding var showModal: Bool
    
    var body: some View {
        VStack{
            Text("Inside Modal View")
                .padding()
            // 2.
            Button("Dismiss") {
                self.showModal.toggle()
            }
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView(showModal: .constant(true))
    }
}
