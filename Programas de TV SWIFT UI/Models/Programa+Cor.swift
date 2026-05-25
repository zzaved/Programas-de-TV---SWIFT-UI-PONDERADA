import SwiftUI

extension Programa {
    var cor: Color {
        switch tipo {
        case "Anime":   return .orange
        case "Desenho": return .blue
        case "Serie":   return .purple
        default:        return .gray
        }
    }
}
