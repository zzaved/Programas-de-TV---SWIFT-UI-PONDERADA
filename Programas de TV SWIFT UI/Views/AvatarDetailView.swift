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
                // TODO E: ZStack com hero (fundo + emoji + overlay) + badge + nome
                // TODO F: secao Sinopse (Text com avatar.sinopse)
                // TODO G: HStack com 3x InfoBadge (episodios, temporadas, status)
                // TODO H: secao Personagens -> ForEach sobre avatar.personagens
                Text(avatar.nome)
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
