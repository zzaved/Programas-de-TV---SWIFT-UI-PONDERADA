import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                NavigationLink {
                    NarutoDetailView()
                } label: {
                    ShowCard(programa: naruto)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    AvatarDetailView()
                } label: {
                    ShowCard(programa: avatar)
                }
                .buttonStyle(.plain)

                NavigationLink {
                    StrangerDetailView()
                } label: {
                    ShowCard(programa: strangerThings)
                }
                .buttonStyle(.plain)

                Spacer()
            }
            .padding()
            .navigationTitle("Programas")
        }
    }
}

#Preview {
    ListaView()
}
