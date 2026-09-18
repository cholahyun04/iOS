import SwiftUI

struct OrderCompareView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 8) {
                Text("padding → background")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Text("Hello")
                    .padding()
                    .background(Color.yellow)
            }

            VStack(spacing: 8) {
                Text("background → padding")
                    .font(.caption)
                    .foregroundColor(.secondary)

                Text("Hello")
                    .background(Color.yellow)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    OrderCompareView()
}
