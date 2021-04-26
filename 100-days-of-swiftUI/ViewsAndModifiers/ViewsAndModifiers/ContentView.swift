//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by rafaeldelegate on 10/15/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content

  var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}



struct ContentView: View {
    
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, col in
            //Text("R\(row) C\(col)")
            HStack {
                   Image(systemName: "\(row * 4 + col).circle")
                   Text("R\(row) C\(col)")
               }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
