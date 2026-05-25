//
//  ShowCard.swift
//  Programas de TV SWIFT UI
//
//  Componente reutilizavel - card da lista (Tela 1)
//

import SwiftUI

struct ShowCard: View {
    let programa: Programa

    var body: some View {
        HStack(spacing: 12) {
            // TODO A: barra lateral colorida por tipo
            // TODO B: thumbnail com emoji
            VStack(alignment: .leading, spacing: 4) {
                // TODO C: badge de tipo + nome + genero + avaliacao
                Text(programa.nome)
            }
            Spacer()
            // TODO D: chevron Image(systemName: "chevron.right")
        }
        .background(Color(.systemBackground))
        .cornerRadius(16)
    }
}

#Preview {
    ShowCard(programa: naruto)
}
