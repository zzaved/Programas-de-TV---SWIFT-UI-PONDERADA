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
                // TODO E: ZStack com hero (fundo + emoji + overlay) + badge + nome
                // TODO F: secao Sinopse (Text com strangerThings.sinopse)
                // TODO G: HStack com 3x InfoBadge (episodios, temporadas, status)
                // TODO H: secao Personagens -> ForEach sobre strangerThings.personagens
                Text(strangerThings.nome)
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
