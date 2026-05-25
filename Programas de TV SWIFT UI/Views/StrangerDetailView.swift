import SwiftUI

struct StrangerDetailView: View {
    @State private var mostrarAviso = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(strangerThings.cor.opacity(0.3))
                    Image(systemName: "tv")
                        .font(.system(size: 80))
                        .foregroundStyle(strangerThings.cor)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    LinearGradient(
                        colors: [.black.opacity(0.6), .clear],
                        startPoint: .bottom, endPoint: .top
                    )
                    VStack(alignment: .leading, spacing: 8) {
                        Text(strangerThings.tipo)
                            .font(.caption)
                            .bold()
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(.white.opacity(0.3))
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                        Text(strangerThings.nome)
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
                    Text(strangerThings.sinopse)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                HStack(spacing: 12) {
                    InfoBadge(icone: "tv", valor: "\(strangerThings.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(strangerThings.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: strangerThings.status, rotulo: "Status")
                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Personagens Principais")
                        .font(.title2)
                        .bold()
                    ForEach(strangerThings.personagens.indices, id: \.self) { i in
                        CharacterRow(nome: strangerThings.personagens[i].nome,
                                     papel: strangerThings.personagens[i].papel)
                    }
                }
                .padding(.horizontal)

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
        StrangerDetailView()
    }
}
