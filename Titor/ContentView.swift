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
                    .tabItem {
                        Label("Search", systemImage: "magnifyingglass")
                    }
                ProfileView()
                    .tag("profile")
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
        }
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
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
