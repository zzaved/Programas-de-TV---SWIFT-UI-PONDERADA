//
//  AvatarDetailView.swift
//  Programas de TV SWIFT UI
//
//  Tela 2b - Detalhe do Programa (Avatar)
//

import SwiftUI

struct AvatarDetailView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Hero
                ZStack {
                    Text(avatar.emoji)
                        .font(.system(size: 80))
                    Text(avatar.nome)
                }

                // Sinopse
                Text("Sinopse")
                Text(avatar.sinopse)

                // Informacoes
                HStack {
                    InfoBadge(icone: "tv", valor: "\(avatar.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(avatar.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: avatar.status, rotulo: "Status")
                }

                // Personagens
                Text("Personagens Principais")
                ForEach(avatar.personagens.indices, id: \.self) { i in
                    CharacterRow(nome: avatar.personagens[i].nome,
                                 papel: avatar.personagens[i].papel,
                                 emoji: avatar.personagens[i].emoji)
                }
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        AvatarDetailView()
    }
}
