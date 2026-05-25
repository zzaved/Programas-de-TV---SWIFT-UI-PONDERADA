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
                // TODO 1: ShowCard para naruto + NavigationLink -> NarutoDetailView
                // TODO 2: ShowCard para avatar + NavigationLink -> AvatarDetailView
                // TODO 3: ShowCard para strangerThings + NavigationLink -> StrangerDetailView
                Text("Lista de programas (em construcao)")
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
