import SwiftUI

struct ListaView: View {
    let programas = [naruto, avatar, strangerThings]

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(programas, id: \.nome){ programa in
                        NavigationLink {
                            ProgramaDetailView(programa: programa)
                        } label: {
                          ShowCard(programa: programa)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding()
            }
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
