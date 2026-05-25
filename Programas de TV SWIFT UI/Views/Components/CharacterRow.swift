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
        HStack {
            Image(systemName: "person.fill")
            VStack(alignment: .leading) {
                Text(nome)
                Text(papel)
            }
        }
    }
}

#Preview {
    CharacterRow(nome: "Naruto Uzumaki", papel: "Protagonista")
}
