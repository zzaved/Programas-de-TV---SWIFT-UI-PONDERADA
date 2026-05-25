import SwiftUI

struct NarutoDetailView: View {
    @State private var mostrarAviso = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(naruto.cor.opacity(0.3))
                    Image(systemName: "tv")
                        .font(.system(size: 80))
                        .foregroundStyle(naruto.cor)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    LinearGradient(
                        colors: [.black.opacity(0.6), .clear],
                        startPoint: .bottom, endPoint: .top
                    )
                    VStack(alignment: .leading, spacing: 8) {
                        Text(naruto.tipo)
                            .font(.caption)
                            .bold()
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(.white.opacity(0.3))
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                        Text(naruto.nome)
                            .font(.largeTitle)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .padding()
                }
                .frame(height: 260)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Sinopse")
                        .font(.title2)
                        .bold()
                    Text(naruto.sinopse)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                HStack(spacing: 12) {
                    InfoBadge(icone: "tv", valor: "\(naruto.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(naruto.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: naruto.status, rotulo: "Status")
                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Personagens Principais")
                        .font(.title2)
                        .bold()
                    ForEach(naruto.personagens.indices, id: \.self) { i in
                        CharacterRow(nome: naruto.personagens[i].nome,
                                     papel: naruto.personagens[i].papel)
                    }
                }
                .padding(.horizontal)

                // Botao Assistir
                Button("Assistir") {
                    mostrarAviso = true
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
        }
        .ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)
        .alert("Em construcao", isPresented: $mostrarAviso) {
            Button("OK", role: .cancel) { }
        }
    }
}

#Preview {
    NavigationStack {
        NarutoDetailView()
    }
}
