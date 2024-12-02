//
//  ContentView.swift
//  Titor
//
//  Created by Vitor Trimer on 22/11/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var selectedTab = "tab!"

    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag("home")
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                SearchView()
                    .tag("search")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                ProfileView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag("profile")
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
