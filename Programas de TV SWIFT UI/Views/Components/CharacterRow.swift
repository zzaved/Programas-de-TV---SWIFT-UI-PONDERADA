//
//  CharacterRow.swift
//  Programas de TV SWIFT UI
//
//  Componente reutilizavel - linha de personagem (Tela 2)
//

import SwiftUI

struct CharacterRow: View {
    let nome: String
    let papel: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.fill")
                .font(.title2)
            VStack(alignment: .leading, spacing: 2) {
                Text(nome)
                    .font(.headline)
                Text(papel)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
    }
}

#Preview {
    CharacterRow(nome: "Naruto Uzumaki", papel: "Protagonista")
        .padding()
}
