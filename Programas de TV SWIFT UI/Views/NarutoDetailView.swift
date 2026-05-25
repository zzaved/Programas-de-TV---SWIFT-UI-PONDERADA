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
                // TODO E: ZStack com hero (fundo + emoji + overlay) + badge + nome
                // TODO F: secao Sinopse (Text com naruto.sinopse)
                // TODO G: HStack com 3x InfoBadge (episodios, temporadas, status)
                // TODO H: secao Personagens -> ForEach sobre naruto.personagens
                Text(naruto.nome)
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
