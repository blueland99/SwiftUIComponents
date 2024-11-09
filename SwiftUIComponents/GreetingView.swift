//
//  GreetingView.swift
//  SwiftUIComponents
//
//  Created by blueland on 11/9/24.
//

import SwiftUI

struct GreetingView: View {
    var name: String
    
    var body: some View {
        // GreetingView에서 Text를 사용해 텍스트를 표시
        Text("Hello, \(name)!")
    }
} 
