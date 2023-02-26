//
//  Coordinator.swift
//  Dreamzy
//
//  Created by Joel de Almeida Souza on 25/02/23.
//

import SwiftUI

enum Page: String, Identifiable {
    case welcome, login
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case welcome, login
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case welcome, login
    
    var id: String {
        self.rawValue
    }
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .welcome:
            WelcomeView()
        case .login:
            LoginView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .welcome:
            WelcomeView()
        case .login:
            LoginView()
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .welcome:
            WelcomeView()
        case .login:
            LoginView()
        }
    }
}
