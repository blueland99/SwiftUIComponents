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
//        GreetingView(name: "iOS SwiftUI")
//        LayoutExample()
//        LazyVStackExample()
        LazyHStackExample()
    }
}

#Preview {
    MainScreen()
}
