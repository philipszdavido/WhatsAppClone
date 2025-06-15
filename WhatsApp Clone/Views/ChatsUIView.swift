//
//  ChatsUIView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI

extension Text {
    func whatsStypeButton(color: Color = .green) -> some View {
        self                        .padding(5)
            .padding(.horizontal, 15)
            .background(color)
            .cornerRadius(50.0)
            .foregroundStyle(.white)
        
    }
    
    func notif() -> some View {
        self .padding(4)
            .padding(.horizontal, 4)
            .background(.green)
            .cornerRadius(50.0)
            .foregroundStyle(.white)
    }
}

struct ChatsUIView: View {
    @State var searchText: String = ""
    var body: some View {
        
        NavigationView {
            List {
                
                Section {
                    TagsView
                    ChatListView
                }.listRowSeparator(.hidden)
                
            }.navigationTitle("Chats")
                .listRowSeparator(.hidden)
                .listSectionSeparator(.hidden)
                .listStyle(.plain)
                .toolbar {
                    ToolbarItem(
                        placement: ToolbarItemPlacement.topBarLeading) {
                            Image(systemName: "ellipsis")
                        }
                    
                    ToolbarItem(
                        placement: ToolbarItemPlacement.topBarTrailing) {
                            HStack {
                                Image(systemName: "camera.fill")
                                Image(systemName: "plus.circle.fill")
                            }
                        }
                }
                .searchable(text: $searchText)
        }
        
    }
    
    var TagsView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<chatTags.count) { index in
                    Button(action: {
                        
                    }) {
                        Text(chatTags[index])
                            .whatsStypeButton()
                        
                    }
                }
            }
        }
    }
    
    var ChatListView: some View {
        
        ForEach (0..<9) { _ in
            HStack {
                
                Circle()
                    .frame(width: 44, height: 44)
                    .padding(.trailing, 5)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Abba Youth Forum")
                                .bold()
                            Text("~ Engr Chukwudubem: Well stated ....daalu nwannem")
                        }
                        Spacer()
                        VStack {
                            Text("5:13PM")
                            HStack {
                                Image(systemName: "bell.badge.slash.fill")
                                Text("12").notif()
                            }
                            Spacer()
                        }
                    }
                    
                    Divider()
                }
                
            }
            
        }
        
    }
    
}

#Preview {
    ChatsUIView()
}
