//
//  RootScreen.swift
//  DigiSymbols
//
//  Created by a on 6/28/23.
//

import SwiftUI

struct RootScreen: View {
    enum Page: String, CaseIterable, Identifiable {
        case icon = "icon"
        case illustration = "illustration"
        case license = "license"
        
        var id: String { rawValue }
        
        var title: String {
            switch self {
            case .icon:
                return "アイコン"
            case .illustration:
                return "イラスト"
            case .license:
                return "ライセンス"
            }
        }
    }
    
    @State var selectedItem: String = Page.icon.rawValue
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationSplitView(sidebar: {
            List(Page.allCases, selection: $selectedItem) { item in
                Text(item.title)
            }
        }, detail: {
            switch (Page(rawValue: selectedItem)) {
            case .icon:
                IconScreen()
            default:
                Text("unknown")
            }
        })
        .navigationTitle("すべて")
        .navigationSubtitle("512個のアイコン")
        .searchable(text: $searchText)
//        .listStyle(.sidebar)
    }
}
