import SwiftUI

struct SymbolListView: View {
    @State private var selected: String?

    let symbols: [(name: String, label: String)] = [
        ("star.fill", "즐겨찾기"),
        ("heart.fill", "좋아요"),
        ("bell.fill", "알림"),
        ("gearshape.fill", "설정"),
        ("person.fill", "프로필")
    ]

    var body: some View {
        VStack(spacing: 12) {
            ForEach(symbols, id: \.name) { symbol in
                HStack {
                    Image(systemName: symbol.name)
                        .frame(width: 30)
                    Text(symbol.label)
                    Spacer()
                }
                .padding()
                .background(
                    selected == symbol.name ? Color.blue.opacity(0.3) : Color(.systemGray6)
                )
                .cornerRadius(10)
                .onTapGesture {
                    selected = symbol.name
                }
            }
        }
        .padding()
    }
}

#Preview {
    SymbolListView()
}
