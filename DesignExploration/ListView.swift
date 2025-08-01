//
//  ListView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                List(1...50, id: \.self) { idx in
                    Text("Item \(idx)")
                }
                .listStyle(.plain)
            }
            .navigationTitle("Simple List")
        }
    }
}

#Preview {
    ListView()
}
