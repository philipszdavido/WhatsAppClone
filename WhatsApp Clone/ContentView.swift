//
//  ContentView.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var selected: Int = 1

    var body: some View {
        TabView(selection: $selected) {
            
            UpdatesUIView()
                .tabItem{
                    VStack{
                        Image(systemName: "message.and.waveform")
                        Text("Updates")
                    }
                }
                .tag(1)
            
            CallsUIView()
                .tabItem{
                    VStack{
                        Image(systemName: "phone")
                        Text("Calls")
                    }
                }
                .tag(2)
            
            CommunitiesUIView()
                .tabItem{
                    VStack{
                        Image(systemName: "person.3")
                        Text("Communities")
                    }
                }
                
            
            ChatsUIView()
                .tabItem{
                    VStack{
                        Image(systemName: selected == 3 ? "message.fill" : "message")
                        Text("Chats")
                    }
                }
                .tag(3)
            
            SettingsUIView()
                .tabItem{
                    VStack{
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                }
                .tag(4)
                    
            
        }
    }

}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
