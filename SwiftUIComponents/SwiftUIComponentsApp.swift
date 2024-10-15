//
//  SwiftUIComponentsApp.swift
//  SwiftUIComponents
//
//  Created by blueland on 10/15/24.
//

// SwiftUI 프레임워크를 가져옴, UI를 선언적으로 만들기 위해 필요
import SwiftUI

// @main 어트리뷰트를 사용하여 이 구조체가 앱의 진입점임을 나타냄
@main
struct SwiftUIComponentsApp: App { // SwiftUI 앱의 진입점이 되는 구조체, App 프로토콜을 따름
    
    // 앱의 UI를 정의하는 body 프로퍼티, 앱의 최상위 구조를 반환
    var body: some Scene {
        // WindowGroup은 앱의 여러 윈도우를 관리하는 컨테이너, 주로 iOS에서 단일 윈도우로 사용
        WindowGroup {
            // ContentView라는 기본 화면을 표시
            ContentView()
        }
    }
}
