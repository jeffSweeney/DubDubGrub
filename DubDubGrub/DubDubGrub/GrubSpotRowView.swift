//
//  GrubSpotRowView.swift
//  DubDubGrub
//
//  Created by Jeffrey Sweeney on 1/20/24.
//

import SwiftUI

struct GrubSpotRowView: View {
    @State var headcount: Int // TODO: Dummy data - will replace
    
    var body: some View {
        HStack(alignment: .top, spacing: 18) {
            // MARK: - Spot Image
            Image("maggianos") // TODO: Dummy data - will replace
                .resizable()
                .scaledToFill()
                .frame(width: 85, height: 85)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 16) {
                // MARK: - Spot Name
                Text("Maggianos") // TODO: Dummy data - will replace
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                // MARK: - Spot People
                if headcount == 0 {
                    Text("Nobody Checked In")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemGray))
                } else {
                    spotPeopleView
                }
            }
            .padding(.top, 2)
            
            Spacer()
        }
    }
}

extension GrubSpotRowView {
    private var spotPeopleView: some View {
        return HStack(spacing: 12) {
            ForEach(1 ... min(4, headcount), id: \.self) { _ in
                AvatarView()
            }
            
            let remaining = headcount - 4
            if remaining == 1 {
                AvatarView()
            } else if remaining > 0 {
                Text("+\(remaining)")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .frame(width: 35, height: 35)
                    .background(Color.brandPrimary)
                    .foregroundStyle(.white)
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    GrubSpotRowView(headcount: Int.random(in: 0 ... 10))
        .preferredColorScheme(.dark)
}

struct AvatarView: View {
    var body: some View {
        Image("default-avatar") // TODO: Dummy data - will replace
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
