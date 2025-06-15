//
//  CommunitiesUIView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI

struct CommunitiesUIView: View {
    var body: some View {
        NavigationView {
                        
            List {
                Section {
                    
                    HStack(alignment: .top) {
                        Image(systemName: "lightbulb")
                            .padding(.trailing, 10)
                            .font(Font.system(size: 25))
                        
                        VStack(alignment: .leading) {
                            Text("Communities")
                                .font(
                                    Font
                                        .system(
                                            size: 20,
                                            weight: .bold,
                                            design: .default
                                        )
                                )
                            Text("View and create communities from the Chats tab, and organize them with a list. ")
                                .font(
                                    Font
                                        .system(
                                            size: 20,
                                            weight: .regular,
                                            design: .default
                                        )
                                ) + Text("Add communities list").foregroundStyle(
                                    .green
                                ).font(
                                    Font
                                        .system(
                                            size: 20,
                                            weight: .regular,
                                            design: .default
                                        )
                                )
                                .bold()
                        }
                    }
                    .padding()
                    .background(.gray)
                    .cornerRadius(10.0)
                    .foregroundStyle(.white)

                    ForEach (0..<2) { _ in
                        VStack {
                            HStack {
                                Text(randomCommunityName)
                                    .font(Font.system(size: 20, weight: .bold, design: .default))
                                Spacer()
                                Button(action: {}) {
                                    Text("See all")
                                        .bold()
                                        .padding(5)
                                        .padding(.horizontal, 10)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(50.0)
                                }
                            }.padding(.top, 15)
                            
                            CommunityList
                            
                        }
                    }

                }.listRowSeparator(.hidden)
            }.navigationTitle(Text("Communities"))
                .listRowSeparator(.hidden)
                .listSectionSeparator(.hidden)
                .listStyle(.plain)
                .toolbar {
                    ToolbarItem(
                        placement: ToolbarItemPlacement.topBarTrailing
                    ) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
        }
    }
    
    var CommunityList: some View {
        ForEach(0..<3) { item in
            HStack {
                Circle()
                    .frame(width: 40, height: 40)
                    .padding(.trailing, 6)
                VStack(alignment: .leading) {
                    HStack {
                        Text(randomCommunityChannelName).bold()
                        Spacer()
                        Text("05.05.25")
                    }
                    
                    Text(randomChannelPreviewText)
                }
            }
        }
    }
}

#Preview {
    CommunitiesUIView()
}
