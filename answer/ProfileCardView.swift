import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            VStack(alignment: .leading, spacing: 12) {
                HStack(spacing: 16) {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.blue)

                    VStack(alignment: .leading, spacing: 4) {
                        Text("최아현")
                            .font(.title2)
                            .bold()
                        Text("게임공학과")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }

                Text("게임 개발을 하고 싶습니다!")
                    .font(.body)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(16)

            Text("HELLO")
                .font(.caption2)
                .bold()
                .padding(6)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .offset(x: -8, y: 8)
        }
        .padding()
    }
}

#Preview {
    ProfileCardView()
}
