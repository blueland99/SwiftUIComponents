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
        
        VStackHStackZStackExample()
    }
}

struct GreetingView: View {
    var name: String
    
    var body: some View {
        // GreetingView에서 Text를 사용해 텍스트를 표시
        Text("Hello, \(name)!")
    }
}

struct VStackHStackZStackExample: View {
    var body: some View {
        VStack(
            alignment: .leading // VStack 내부 아이템을 왼쪽 정렬
        ) {
            Text("VStack Layout")
            Spacer(minLength: 4)
            VStackExample()

            Spacer(minLength: 8)

            Text("HStack Layout")
            Spacer(minLength: 4)
            HStackExample1()
            Spacer(minLength: 4)
            HStackExample2()

            Spacer(minLength: 8)

            Text("ZStack Layout")
            Spacer(minLength: 4)
            ZStackExample1()
            Spacer(minLength: 4)
            ZStackExample2()
        }
        .padding(8) // 전체 패딩
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 화면 크기만큼 확장
    }
}

// Column과 유사한 VStack 레이아웃 컴포넌트
struct VStackExample: View {
    var body: some View {
        VStack(
            alignment: .center, // 수평 중앙 정렬
            spacing: 4 // 각 아이템 간의 간격
        ) {
            Text("Item 1")
            Text("Item 2")
            Text("Item 3")
        }
        .frame(maxWidth: .infinity) // 가로로 꽉 차게
        .padding(8) // 내부 패딩
        .background(Color.gray.opacity(0.3)) // 배경 색상
    }
}

// Row와 유사한 HStack 레이아웃 컴포넌트 1
struct HStackExample1: View {
    var body: some View {
        HStack(
            spacing: 4 // 각 아이템 간의 간격
        ) {
            Text("Left")
            Spacer() // 공간을 나눠서 양쪽 끝으로 배치
            Text("Center")
            Spacer()
            Text("Right")
        }
        .frame(maxWidth: .infinity) // 가로로 꽉 차게
        .padding(16) // 내부 패딩
        .background(Color.gray.opacity(0.3)) // 배경 색상
    }
}

// Row와 유사한 HStack 레이아웃 컴포넌트 2
struct HStackExample2: View {
    var body: some View {
        HStack(
            spacing: 10 // 각 아이템 간의 간격
        ) {
            Text("Left")
            Text("Center")
            Text("Right")
        }
        .frame(maxWidth: .infinity) // 가로로 꽉 차게
        .padding(8) // 내부 패딩
        .background(Color.gray.opacity(0.3)) // 배경 색상
        .frame(maxWidth: .infinity, alignment: .center) // 수평 중앙 정렬
    }
}

// Box와 유사한 ZStack 레이아웃 컴포넌트 1
struct ZStackExample1: View {
    var body: some View {
        ZStack(
            alignment: .center // ZStack 내부 아이템을 중앙 정렬
        ) {
            // 원형 박스
            Circle()
                .fill(Color.blue) // 색상
                .frame(width: 50, height: 50) // 크기
            
            // 텍스트
            Text("Centered")
                .foregroundColor(.white) // 텍스트 색상
        }
        .frame(width: 150, height: 150) // ZStack 크기
        .background(Color.gray.opacity(0.3)) // 배경 색상
    }
}

// Box와 유사한 ZStack 레이아웃 컴포넌트 2
struct ZStackExample2: View {
    var body: some View {
        ZStack(
            alignment: .topLeading // ZStack 내부 아이템을 상단 왼쪽 정렬
        ) {
            // 원형 박스
            Circle()
                .fill(Color.blue) // 색상
                .frame(width: 50, height: 50) // 크기
            
            // 텍스트
            Text("Top Left")
                .foregroundColor(.white) // 텍스트 색상
        }
        .frame(width: 150, height: 150) // ZStack 크기
        .background(Color.gray.opacity(0.3)) // 배경 색상
    }
}

#Preview {
    MainScreen()
}
