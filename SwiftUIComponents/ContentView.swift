//
//  ContentView.swift
//  SwiftUIComponents
//
//  Created by blueland on 10/15/24.
//

// SwiftUI 프레임워크를 가져옴
import SwiftUI

// ContentView라는 구조체를 정의하고, View 프로토콜을 따름
struct ContentView: View {
    
    // 상태 변수: TextField에서 입력한 값과 Toast의 표시 여부를 관리
    @State private var inputText: String = ""
    @State private var showToast: Bool = false
    @State private var isButtonEnabled: Bool = false // Toggle 상태로 버튼 활성화/비활성화 제어
    @State private var sliderValue: Float = 0.5
    
    var body: some View {
        ZStack { // ZStack을 사용하여 Toast를 화면 위에 겹쳐서 표시
            
            VStack(spacing: 20) { // 수직으로 뷰들을 배치하고 간격 설정
                
                // 1. Text: 기본 텍스트 뷰
                Text("Hello, SwiftUI!")
                    .font(.title) // 제목 스타일 폰트 적용
                    .foregroundColor(.blue) // 텍스트 색상을 파란색으로 설정
                
                // 2. TextField: 사용자 입력을 받을 수 있는 필드
                TextField("Enter something...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle()) // 둥근 테두리 스타일의 입력 필드
                    .padding()
                
                // 3. Button: 클릭 시 Toast를 보여주는 버튼
                Button(action: {
                    // 버튼 클릭 시 Toast를 표시하고 2초 후에 숨김
                    withAnimation {
                        showToast = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            showToast = false
                        }
                    }
                }) {
                    Text("Show Toast")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                // 4. Toggle: 버튼의 활성화 상태를 제어하는 스위치
                Toggle(isOn: $isButtonEnabled) {
                    Text("Enable Submit Button") // Toggle 옆에 표시되는 텍스트
                }
                .padding()
                
                // 5. Button: Toggle의 상태에 따라 활성화 또는 비활성화
                Button(action: {
                    print("Button pressed with input: \(inputText)") // 버튼 클릭 시 입력값 출력
                }) {
                    Text("Submit")
                        .padding()
                        .background(isButtonEnabled ? Color.blue : Color.gray) // 활성화 상태에 따라 배경색 변경
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(!isButtonEnabled) // Toggle 상태가 false일 때 버튼을 비활성화
                
                // 6. Image: 시스템 아이콘을 사용하는 이미지 뷰
                Image(systemName: "star.fill")
                    .resizable() // 이미지 크기 조절 가능하게 설정
                    .frame(width: 50, height: 50) // 이미지의 크기를 50x50으로 설정
                    .foregroundColor(.yellow) // 이미지 색상을 노란색으로 설정
                
                // 7. Slider: 값을 조절할 수 있는 슬라이더
                Slider(value: $sliderValue) // 0에서 1 사이의 값을 가지는 슬라이더
                    .padding()
                
                Spacer() // 위와 아래의 공간을 적절히 배치하기 위한 Spacer
            }
            .padding()
            
            // 8. Toast: 조건부로 표시되는 Toast 메시지
            if showToast {
                VStack {
                    Spacer() // 화면 아래쪽에 Toast를 위치시키기 위한 Spacer
                    Text(inputText.isEmpty ? "No input provided" : inputText) // 입력된 텍스트 또는 기본 메시지
                        .padding()
                        .background(Color.black.opacity(0.8)) // 반투명한 검은색 배경
                        .foregroundColor(.white) // 텍스트 색상 흰색
                        .cornerRadius(10) // 둥근 모서리
                        .padding(.bottom, 50) // 화면 하단에 적절한 간격을 주기 위한 패딩
                }
                .transition(.move(edge: .bottom)) // Toast가 아래에서 슬라이드로 나타남
            }
        }
    }
}

// SwiftUI의 미리보기 기능을 사용하여 ContentView를 Xcode에서 실시간으로 확인
#Preview {
    ContentView() // ContentView를 미리보기로 렌더링
}
