//
//  GrubSpotView.swift
//  DubDubGrub
//
//  Created by Jeffrey Sweeney on 1/21/24.
//

import SwiftUI

struct GrubSpotView: View {
    @Environment(\.dismiss) var dismiss
    let vGridColumns = [GridItem(.flexible()),
                        GridItem(.flexible()),
                        GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Image("maggianos")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 25)
                    
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .imageScale(.small)
                        
                        Text("1 S Market St Str 40")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .padding()
                }
                
                VStack {
                    Text("It's Maggianos. Enough said.")
                        .font(.headline)
                    
                    HStack(alignment: .center, spacing: 24) {
                        Button(action: {}, label: {
                            SpotViewActionButton(sfName: "paperplane.fill", background: .brandPrimary)
                        })
                        
                        Button(action: {}, label: {
                            SpotViewActionButton(sfName: "globe", background: .brandPrimary)
                        })
                        
                        Button(action: {}, label: {
                            SpotViewActionButton(sfName: "phone.fill", background: .brandPrimary)
                        })
                        
                        Button(action: {}, label: {
                            SpotViewActionButton(sfName: "person.fill.xmark", background: .red)
                        })
                    }
                    .foregroundStyle(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background {
                        Capsule(style: .continuous)
                            .foregroundStyle(Color.gray.opacity(0.3))
                    }
                    .padding()
                    
                    Text("Who's Here?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    LazyVGrid(columns: vGridColumns, spacing: 8) {
                        ForEach(0 ..< 12) { index in
                            VStack {
                                AvatarView(avatarSize: .large)
                                
                                Text("Person \(index)")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .lineLimit(1)
                                    .minimumScaleFactor(0.75)
                            }
                        }
                    }
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Maggianos")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    GrubSpotView()
        .preferredColorScheme(.dark)
}

struct SpotViewActionButton: View {
    let sfName: String
    let background: Color
    
    var body: some View {
        Image(systemName: sfName)
            .imageScale(.medium)
            .frame(width: 50, height: 50)
            .background(background)
            .clipShape(Circle())
    }
}
