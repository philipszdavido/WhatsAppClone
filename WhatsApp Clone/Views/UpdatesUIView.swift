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
                StatusView()
            }
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
            .listStyle(PlainListStyle())
            .listRowSeparator(.hidden)
            .listSectionSeparator(.hidden)
        }
    }
}

struct StatusView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                    .font(Font?.init(.system(size: 20, weight: .bold)))
                    .fontWeight(.bold)
                Spacer()
                
                Circle()
                    .fill(Color.gray)
                    .frame(width: 10, height: 10)
                    .overlay {
                        Image(systemName: "camera.fill")
                            .foregroundStyle(.white)
                    }

                Image(systemName: "pencil")
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
                                    Text("Nna")
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
                                    .position(x: 40, y: 40)
                            }
                    }
                    Spacer()
                    Text("Add Status")
                        .bold()
                        .font(Font?.init(.system(size: 15, weight: .medium)))
                }.padding(.horizontal, 5)
                    .padding(.vertical, 10)
            }

    }
    
}

struct ChannelsUIView: View {
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
            
            ForEach(0..<10) { _ in
                HStack {
                    VStack {
                        Circle()
                            .frame(width: 40, height: 40)
                        Spacer()
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("General Swift Channel")
                                .font(Font?.init(.system(size: 14, weight: .medium)))
                            Spacer()
                            Text("3:12PM")
                                .font(Font?.init(.system(size: 14, weight: .medium)))
                                .foregroundColor(.gray)
                        }
                        HStack {
                            Text("If you wanted to control the number of columns you can use .flexible() instead, which also lets you specify how big each item should be but now lets you control how many columns there are. For example, this creates five columns")
                                .font(Font?.init(.system(size: 12, weight: .regular)))
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1234")
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
        }
    }
}

#Preview {
    UpdatesUIView()
}
