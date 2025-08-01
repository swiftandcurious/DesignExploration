//
//  SearchView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchString = ""
    
    private var filteredItems: [Int] {
        let allItems = Array(1...50)
        if searchString.isEmpty {
            return allItems
        } else {
            return allItems.filter {
                "Song Title \($0)".localizedCaseInsensitiveContains(searchString)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List(filteredItems, id: \.self) { idx in
                Text("Song Title \(idx)")
            }
            .navigationTitle("Search")
            .searchable(text: $searchString)
        }
    }
}


#Preview {
    SearchView()
}
