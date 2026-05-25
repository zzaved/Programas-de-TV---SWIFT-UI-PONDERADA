import SwiftUI

struct ShowCard: View {
    let programa: Programa

    var body: some View {
        HStack(spacing: 12) {
            // thumbnail com icone
            Image(systemName: "tv")
                .font(.largeTitle)

            VStack(alignment: .leading, spacing: 4) {
                Text(programa.tipo)        // tipo
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(programa.nome)        // nome
                    .font(.headline)
                Text(programa.genero)      // genero
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                HStack(spacing: 4) {       // avaliacao
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("\(programa.avaliacao, specifier: "%.1f")")
                }
                .font(.subheadline)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(programa.cor.opacity(0.25))
        .cornerRadius(16)
    }
}

#Preview {
    ShowCard(programa: naruto)
        .padding()
}
