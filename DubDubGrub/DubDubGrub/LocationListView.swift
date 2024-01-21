//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Jeffrey Sweeney on 1/9/24.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(0...10, id: \.self) { _ in
                    NavigationLink {
                        GrubSpotView()
                    } label: {
                        VStack {
                            Divider()
                            
                            HStack {
                                GrubSpotRowView(headcount: Int.random(in: 0 ... 10))
                                    .foregroundStyle(Color.primary)
                                
                                Image(systemName: "chevron.right")
                                    .imageScale(.small)
                                    .foregroundStyle(.gray)
                            }
                            .padding()
                        }
                    }

                }
                .navigationTitle("Grub Spots")
            }
        }
    }
}

#Preview {
    LocationListView()
        .preferredColorScheme(.dark)
}
