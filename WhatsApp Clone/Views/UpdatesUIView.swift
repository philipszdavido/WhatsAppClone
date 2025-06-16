//
//  UpdatesUIView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI

struct UpdatesUIView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            
            List {
                Section {
                    StatusView()
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .padding()
                }
                .listSectionSeparator(.hidden)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Updates")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack {
                        Image(systemName: "ellipsis")
                        Spacer()
                    }
                }
            }
            .searchable(text: Binding<String>(
                get: { searchText == "" ? "Search" : searchText},
                set: {_ in searchText = "" }
            ))
            
        }
    }
}

struct StatusView: View {
    
    private let names = ["Chidume", "Nnamdi", "Okeke"]
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                    .font(Font?.init(.system(size: 20, weight: .bold)))
                    .fontWeight(.bold)
                Spacer()
                
                Circle()
                    .fill(Color.primary)
                    .frame(width: 30, height: 30)
                    .overlay {
                        Image(systemName: "camera.fill")
                            .frame(width: 10, height: 10)
                            .foregroundStyle(Color.primary)
                    }
                
                Circle()
                    .frame(width: 30, height: 30)
                    .overlay {
                        Image(systemName: "pencil")
                            .frame(width: 10, height: 10)
                            .foregroundStyle(.white)
                    }
                
            }.padding(.bottom, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    addStatusView
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray)
                            .frame(height: 200)
                            .frame(width: 110)
                            .overlay {
                                VStack(alignment: .leading) {
                                    Circle()
                                        .fill(Color.blue)
                                        .frame(width: 50, height: 50)
                                    Spacer()
                                    Text(names.randomElement() ?? "Nna")
                                        .bold()
                                        .font(Font?.init(.system(size: 15, weight: .medium)))
                                }
                                .padding(.trailing, 45)
                                .padding(.vertical, 10)
                            }

                    }
                }
            }
            
            ChannelsUIView()
                .padding(.top, 10)
            
        }
    }
    
    var addStatusView: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray)
            .frame(height: 200)
            .frame(width: 110)
            .overlay {
                VStack(alignment: .leading) {
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay {
                                Circle()
                                    .fill(Color.gray)
                                    .frame(width: 20, height: 20)
                                    .overlay {
                                        Circle()
                                            .fill(.green)
                                            .frame(width: 15, height: 15)
                                            .overlay {
                                                Text("+")
                                            }
                                    }
                                    .position(x: 40, y: 45)
                            }
                    }
                    Spacer()
                    Text("Add Status")
                        .bold()
                        .font(Font?.init(.system(size: 14, weight: .medium)))
                }
                .padding(.trailing, 45)
                .padding(.vertical, 10)

            }

    }
    
}

struct ChannelsUIView: View {
    
    private let channelNames = ["General", "Announcements", "Work", "Real Madrid C.F."]
    private let channelDescriptions: [String] = [
        "This is the general channel for all questions and discussions.",
        "Important announcements and updates go here.",
        "Work-related tasks and projects should be discussed here.",
        "Official match updates and highlights go here.",
        "If you wanted to control the number of columns you can use .flexible() instead, which also lets you specify how big each item should be but now lets you control how many columns there are. For example, this creates five columns"
    ]
    private let numNotifs = [1, 2, 3, 4]
    
    var body: some View {
        VStack {
            HStack {
                Text("Channels")
                    .font(Font?.init(.system(size: 20, weight: .bold)))
                    .fontWeight(.bold)
                Spacer()
                Button(action: { }) {
                    Text("Explore")
                        .padding(6)
                        .padding(.horizontal, 10)
                        .background(Color.blue)
                        .cornerRadius(50.0)
                        .foregroundStyle(.white)
                }
            }
            
            ForEach(0..<3) { _ in
                HStack(alignment: .top) {
                    VStack {
                        Circle()
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 5)
                        Spacer()
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(
                                channelNames
                                    .randomElement() ?? "General Swift Channel"
                            ).bold()
                                //.font(Font?.init(.system(size: 14, weight: .medium)))
                            Spacer()
                            Text("3:12PM")
//                                .font(Font?.init(.system(size: 14, weight: .medium)))
                                .foregroundColor(.gray)
                        }
                        HStack(alignment: .top) {
                            Text(
                                channelDescriptions
                                    .randomElement() ?? ""
                            )
                                //.font(Font?.init(.system(size: 12, weight: .regular)))
                                .foregroundColor(.gray)
                            Spacer()
                            Text("\(numNotifs.randomElement() ?? 12)")
                                .font(Font?.init(.system(size: 12, weight: .regular)))
                                .foregroundColor(.white)
                                .padding(4)
                                .background(Color.green)
                                .cornerRadius(50.0)
                        }
                    }
                    Spacer()
                }
            }
            
            channelsToFollowView
                .padding(.top, 10)

        }
    }
    
    var channelsToFollowView: some View {
        VStack {
            HStack {
                Text("Find channels to follow")
                    .bold()
                    .font(Font?.init(.system(size: 15, weight: .semibold)))
                Spacer()
            }
            
            ForEach (0..<3) { _ in
                HStack {
                    Circle()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 5)
                    VStack(alignment: .leading) {
                        Text(channelNames
                            .randomElement() ?? "Real Madrid C.F.")
                        Text("23M followers")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    Spacer()
                    Button(action: { }) {
                        Text("Follow")
                            .padding(5)
                            .padding(.horizontal, 15)
                            .background(.green)
                            .cornerRadius(50.0)
                            .foregroundStyle(.white)
                    }
                }.padding(.bottom, 10)
            }
            
            HStack {
                Button(action: { }) {
                    Text("Explore More")
                        .padding(5)
                        .padding(.horizontal, 20)
                        .background(.green)
                        .cornerRadius(50.0)
                        .foregroundStyle(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    UpdatesUIView()
}
