//
//  LazyExample.swift
//  SwiftUIComponents
//
//  Created by blueland on 11/9/24.
//

import SwiftUI

struct LazyVStackExample: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    Text("Item #\(index)")
                        .padding(16)
                }
            }
        }
    }
}

struct LazyHStackExample: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0..<100) { index in
                    Text("Item #\(index)")
                        .padding(16)
                }
            }
        }
    }
}

