//
//  HomePresenter.swift
//  SwiftUILogin
//
//  Created by Kaushik on 28/05/23.
//

import Foundation

//==== Presenter =====//
class HomePresenter: ObservableObject {
    
    @Published var isError: Bool
    
    init() {
        isError = false
        show()
    }
    
    func show() {
        isError.toggle()
    }
}
