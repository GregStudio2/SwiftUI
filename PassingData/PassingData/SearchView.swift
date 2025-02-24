//
//  SearchView.swift
//  PassingData
//
//  Created by Franciscus Valentinus Ongkosianbhadra on 23/09/22.
//

import SwiftUI

struct SearchView: View {
    
    // @Binding is used when variables need to be passed between 2 views
    @Binding var searchedText: String
    
    var body: some View {
        // show searched text in this view
        
        VStack{
            Text(self.searchedText)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    
    // when using @Binding, @State static must be used to show preview
    @State static var searchedText: String = ""
    
    static var previews: some View {
        SearchView(searchedText: $searchedText)
    }
}
