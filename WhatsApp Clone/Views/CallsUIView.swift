//
//  CallsUIView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI

struct CallsUIView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Favorites")
                            .font(Font.system(size: 20, weight: .bold, design: .default))
                        Spacer()
                        Button(action: {}) {
                            Text("More")
                                .bold()
                                .padding(5)
                                .padding(.horizontal, 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(50.0)
                        }
                    }.padding(.top, 15)
                    
                    HStack {
                        Circle()
                            .frame(width: 40, height: 40)
                        Text(randomContactName)
                        Spacer()
                        HStack {
                            Image(systemName: "phone")
                                .padding(.horizontal, 10)
                                .font(Font.system(size: 20))
                            Image(systemName: "video")
                                .font(Font.system(size: 20))
                        }
                    }
                    
                    Text("Recent")
                        .font(Font.system(size: 20, weight: .bold, design: .default))
                        .padding(.top, 15)
                    
                    ForEach(0..<10) { _ in
                        CallLogItem
                    }
                    
                }.listRowSeparator(.hidden)
            }.navigationTitle(Text("Calls"))
                .listStyle(.plain)
                .listRowSeparator(.hidden)
                .listSectionSeparator(.hidden)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        HStack {
                            Image(systemName: "ellipsis")
                        }
                    }
                    ToolbarItem(
                        placement: ToolbarItemPlacement.topBarTrailing) {
                            Image(systemName: "plus.circle.fill")
                        }
                }
                .searchable(text: $searchText)

        }
    }
    
    var CallLogItem: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
            VStack(alignment: .leading) {
                Text(randomContactName)
                HStack {
                    Image(systemName: "phone.arrow.up.right")
                    Text("Missed")
                }
            }
            Spacer()
            HStack {
                Text("6:00AM")
                Image(systemName: "info.circle")
                    .font(Font.system(size: 20))

            }
        }

    }
}

#Preview {
    CallsUIView()
}
