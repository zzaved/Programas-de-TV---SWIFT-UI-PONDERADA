//
//  NarutoDetailView.swift
//  Programas de TV SWIFT UI
//
//  Tela 2a - Detalhe do Programa (Naruto)
//

import SwiftUI

struct NarutoDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Hero
                ZStack {
                    Text(naruto.emoji)
                        .font(.system(size: 80))
                    Text(naruto.nome)
                }

                // Sinopse
                Text("Sinopse")
                Text(naruto.sinopse)

                // Informacoes
                HStack {
                    InfoBadge(icone: "tv", valor: "\(naruto.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(naruto.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: naruto.status, rotulo: "Status")
                }

                // Personagens
                Text("Personagens Principais")
                ForEach(naruto.personagens.indices, id: \.self) { i in
                    CharacterRow(nome: naruto.personagens[i].nome,
                                 papel: naruto.personagens[i].papel,
                                 emoji: naruto.personagens[i].emoji)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        NarutoDetailView()
    }
}
