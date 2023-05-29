//
//  ContentView.swift
//  SwiftUILogin
//
//  Created by Kaushik on 27/05/23.
//

import SwiftUI

struct TileView: View {
    let title: String

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
            Text("1223K")
        }
        .padding(8)
        .background(.ultraThinMaterial)
        .cornerRadius(8)
    }
}

struct AmountView: View {

    var body: some View {
            HStack(spacing: 10) {
                TileView(title: "First")
                TileView(title: "Second ")
                TileView(title: "Third")
            }
        .padding(.bottom)
    }
}

struct TitleView: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Net market value")
                .font(.title.weight(.semibold))
            Text("1233444.00")
                .font(.headline)
            Text("rocks")
        }
    }
}


struct HeaderView: View {

    @StateObject var presenter: HomePresenter
    var isTitle: Bool = true
    
    var body: some View {
        VStack(spacing: 20) {
            BarView()
            if presenter.isError {
                TitleView()
                AmountView()
            }
        }
        .background(Color.brown)
    }
}


struct BarView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "person.circle.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
        }.padding(.trailing, 20)
    }
}

struct ContentView: View {

    @StateObject var presenter: HomePresenter
    
    var body: some View {
        VStack {
            HeaderView(presenter: presenter)
            
            Button("Presee") {
                presenter.show()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(presenter: HomePresenter())
    }
}
