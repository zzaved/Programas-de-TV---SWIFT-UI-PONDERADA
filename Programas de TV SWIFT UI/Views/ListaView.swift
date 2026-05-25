//
//  ListaView.swift
//  Programas de TV SWIFT UI
//
//  Tela 1 - Lista de Programas
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                ShowCard(programa: naruto)
                ShowCard(programa: avatar)
                ShowCard(programa: strangerThings)
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
