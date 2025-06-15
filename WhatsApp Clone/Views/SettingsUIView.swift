//
//  SettingsUIView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI

struct SettingsUIView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                
                Section {
                    
                    HStack(alignment: .center) {
                        Circle()
                            .frame(width: 44, height: 44)
                        VStack(alignment: .leading) {
                            Text("John Doe")
                            Text("johndoe")
                        }
                        Spacer()
                        Image(systemName: "barcode.viewfinder")
                    }
                    
                    NavigationLink(destination: EmptyView()) {
                        HStack {
                            Image(systemName: "face")
                            Text("Avatar")
                        }
                    }
                    
                }
                
                Section {
                    
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Lists")
                        }
                        
                    }

                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Broadcast messages")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Starred")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Linked devices")
                        }
                        
                    }

                }

                Section {
                    
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Account")
                        }
                        
                    }

                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Privacy")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Chats")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Notifications")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Storage and data")
                        }
                        
                    }

                }
                
                Section {
                    
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Help")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Invite a friend")
                        }
                        
                    }
                }
                
                Section("Also from Meta") {
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "instagram")
                            Text("Open Instagram")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Open Facebook")
                        }
                        
                    }
                    NavigationLink(destination: EmptyView()) {
                        
                        HStack {
                            Image(systemName: "avatar")
                            Text("Open Threads")
                        }
                        
                    }

                }
                

            }.navigationTitle("Settings")
                .listRowSeparator(.hidden)
                .listSectionSeparator(.hidden)
                .searchable(text: $searchText)
        }
    }
}

#Preview {
    SettingsUIView()
}
