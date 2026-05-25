import SwiftUI

struct AvatarDetailView: View {
    @State private var mostrarAviso = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ZStack(alignment: .bottomLeading) {
                    Rectangle()
                        .fill(avatar.cor.opacity(0.3))
                    Image(systemName: "tv")
                        .font(.system(size: 80))
                        .foregroundStyle(avatar.cor)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    LinearGradient(
                        colors: [.black.opacity(0.6), .clear],
                        startPoint: .bottom, endPoint: .top
                    )
                    VStack(alignment: .leading, spacing: 8) {
                        Text(avatar.tipo)
                            .font(.caption)
                            .bold()
                            .padding(.horizontal, 10)
                            .padding(.vertical, 4)
                            .background(.white.opacity(0.3))
                            .foregroundStyle(.white)
                            .clipShape(Capsule())
                        Text(avatar.nome)
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
                    Text(avatar.sinopse)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)

                HStack(spacing: 12) {
                    InfoBadge(icone: "tv", valor: "\(avatar.episodios)", rotulo: "Episodios")
                    InfoBadge(icone: "rectangle.stack", valor: "\(avatar.temporadas)", rotulo: "Temporadas")
                    InfoBadge(icone: "checkmark.circle", valor: avatar.status, rotulo: "Status")
                }
                .padding(.horizontal)

                VStack(alignment: .leading, spacing: 8) {
                    Text("Personagens Principais")
                        .font(.title2)
                        .bold()
                    ForEach(avatar.personagens.indices, id: \.self) { i in
                        CharacterRow(nome: avatar.personagens[i].nome,
                                     papel: avatar.personagens[i].papel)
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
        AvatarDetailView()
    }
}
