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
        VStack {
            Image(systemName: icone)
            Text(valor)
            Text(rotulo)
        }
    }
}

#Preview {
    InfoBadge(icone: "tv", valor: "720", rotulo: "Episodios")
}
