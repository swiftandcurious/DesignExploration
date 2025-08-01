//
//  MiniPlayerView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct MiniPlayerView: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "music.note.list")
                .font(.title2)
                .foregroundStyle(.secondary)
                .frame(width: 48, height: 48)
                .background(Color(.systemGray5))
                .clipShape(RoundedRectangle(cornerRadius: 8))

            VStack(alignment: .leading) {
                Text("Song Title")
                    .font(.headline)
                    .fontWeight(.semibold)
                Text("Artist Name")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()

            HStack(spacing: 20) {
                Button(action: { }) {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundStyle(.primary)
                }
                Button(action: { }) {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundStyle(.primary)
                }
            }
        }

    }
}

#Preview {
    MiniPlayerView()
}
