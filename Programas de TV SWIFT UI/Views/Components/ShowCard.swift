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
            // thumbnail com icone
            Image(systemName: "tv")
            VStack(alignment: .leading, spacing: 4) {
                Text(programa.tipo)        // badge de tipo
                Text(programa.nome)        // nome
                Text(programa.genero)      // genero
                Text("\(programa.avaliacao) estrelas")  // avaliacao
            }
        }
    }
}

#Preview {
    ShowCard(programa: naruto)
}
