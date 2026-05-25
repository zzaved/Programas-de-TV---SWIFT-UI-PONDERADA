//
//  InfoBadge.swift
//  Programas de TV SWIFT UI
//
//  Componente reutilizavel - badge de info do detalhe (Tela 2)
//

import SwiftUI

struct InfoBadge: View {
    let icone: String
    let valor: String
    let rotulo: String

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: icone)
            Text(valor)
                .bold()
            Text(rotulo)
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

#Preview {
    InfoBadge(icone: "tv", valor: "720", rotulo: "Episodios")
        .padding()
}
