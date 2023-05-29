//
//  SwiftUILoginApp.swift
//  SwiftUILogin
//
//  Created by Kaushik on 27/05/23.
//

import SwiftUI
import UIKit

@main
struct SwiftUILoginApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(presenter: HomePresenter())
        }
    }
}

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> AmountsView {
        let v = AmountsView()
        return v
    }
    
    func updateUIView(_ activityIndicator: AmountsView, context: Context) {
        
    }
}


class AmountsView: UIView {
    
    lazy var stackView: UIStackView = {
       let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .center
        stack.spacing = 10
        return stack
    }()
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //fatalError("init(coder:) has not been implemented")
        setup()
    }
    
    //lazy var label = UILabel()

    func setup() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        var label1 = UILabel()
        label1.textAlignment = .center
        var label2 = UILabel()
        label2.textAlignment = .center
        var label3 = UILabel()
        label3.textAlignment = .center
        label1.text = "Textaf"
        label1.backgroundColor = .blue
        label2.text = "Textsdfsdf"
        label2.backgroundColor = .blue
        label3.text = "Text"
        label3.backgroundColor = .blue
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
    }
}
