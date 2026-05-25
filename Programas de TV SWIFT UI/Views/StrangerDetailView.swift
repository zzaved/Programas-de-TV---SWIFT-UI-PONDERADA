//
//  StrangerDetailView.swift
//  Programas de TV SWIFT UI
//
//  Tela 2c - Detalhe do Programa (Stranger Things)
//

import SwiftUI

struct StrangerDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Hero
                ZStack {
                    Text(strangerThings.emoji)
                        .font(.system(size: 80))
                    Text(strangerThings.nome)
                }

                // Sinopse
                Text("Sinopse")
                Text(strangerThings.sinopse)

                // Informacoes
                HStack {
                    InfoBadge(icone: "tv", valor: "\(strangerThings.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(strangerThings.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: strangerThings.status, rotulo: "Status")
                }

                // Personagens
                Text("Personagens Principais")
                ForEach(strangerThings.personagens.indices, id: \.self) { i in
                    CharacterRow(nome: strangerThings.personagens[i].nome,
                                 papel: strangerThings.personagens[i].papel,
                                 emoji: strangerThings.personagens[i].emoji)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        StrangerDetailView()
    }
}
