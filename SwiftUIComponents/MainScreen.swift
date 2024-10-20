//
//  MainScreen.swift
//  SwiftUIComponents
//
//  Created by blueland on 10/20/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        // MainScreen에서 GreetingView를 호출하고 문자열을 전달
        GreetingView(name: "iOS SwiftUI")
    }
}

struct GreetingView: View {
    var name: String
    
    var body: some View {
        // GreetingView에서 Text를 사용해 텍스트를 표시
        Text("Hello, \(name)!")
    }
}

#Preview {
    MainScreen()
}
