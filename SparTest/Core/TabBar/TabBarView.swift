//
//  TabBarView.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

struct TabBarView: View {

    init() {
        let coloredNavBarAppearance = UINavigationBarAppearance()
        coloredNavBarAppearance.configureWithOpaqueBackground()
        coloredNavBarAppearance.backgroundColor = UIColor(Color.white)

        UINavigationBar.appearance().standardAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().compactAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavBarAppearance

        let coloredTabBarAppearance = UITabBarAppearance()
        coloredTabBarAppearance.configureWithOpaqueBackground()
        coloredTabBarAppearance.backgroundColor = UIColor(Color.white)

        UITabBar.appearance().standardAppearance = coloredTabBarAppearance
        UITabBar.appearance().clipsToBounds = true
    }

    @State private var selectedTab: Int = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            MainView().tabItem { Label("Главная", systemImage: "arrow.up.circle") }.tag(1)

            CatalogView().tabItem { Label("Каталог", systemImage: "square.grid.2x2") }.tag(2)

            BinView().tabItem { Label("Корзина", systemImage: "cart") }.tag(3)

            ProfileView().tabItem { Label("Профиль", systemImage: "person") }.tag(4)
        }
        .accentColor(.green)
    }
}



#Preview {
    TabBarView()
        .environmentObject(ReviewViewModel())
}
