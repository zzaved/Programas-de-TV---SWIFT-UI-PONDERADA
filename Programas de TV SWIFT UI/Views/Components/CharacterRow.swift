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
    let emoji: String

    var body: some View {
        HStack {
            Text(emoji)
            VStack(alignment: .leading) {
                Text(nome)
                Text(papel)
            }
        }
    }
}

#Preview {
    CharacterRow(nome: "Naruto Uzumaki", papel: "Protagonista", emoji: "\u{1F9C6}")
}
