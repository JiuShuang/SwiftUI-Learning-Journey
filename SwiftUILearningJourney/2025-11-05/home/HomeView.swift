//
//  HomeView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/10.
//

import SwiftUI


struct HomeView: View {
    
    @State private var selectedTabIndex:Int=0;
    
    init() {
            UITabBar.appearance().backgroundColor = .white
            UITabBar.appearance().shadowImage = UIImage()
            UITabBar.appearance().backgroundImage = UIImage()
        }
    
    var body: some View {
        TabView(selection:$selectedTabIndex){
            ShopView()
                .tabItem{
                    Image(selectedTabIndex == 0 ? Constant.shopBlackIcon:Constant.shopIcon)
                }.tag(0)
            WishListView()
                .tabItem{
                    Image(selectedTabIndex == 1 ? Constant.wishlistBlackIcon:Constant.wishlistIcon)
                }.tag(1)
            CategoriesView()
                .tabItem{
                    Image(selectedTabIndex == 2 ? Constant.categoriesBlackIcon:Constant.categoriesIcon)
                }.tag(2)
            CartView()
                .tabItem{
                    Image(selectedTabIndex == 3 ? Constant.cartBlackIcon:Constant.cartIcon)
                }.tag(3)
            PersonalView()
                .tabItem{
                    Image(selectedTabIndex == 4 ? Constant.personalBlackIcon:Constant.personalIcon)
                }.tag(4)
        }
    }
}

#Preview {
    HomeView()
}
