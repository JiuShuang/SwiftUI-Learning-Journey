//
//  ClothesProductView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/5.
// UI:https://www.figma.com/community/file/1321464360558173342/shoppe-ecommerce-clothing-fashion-store-multi-purpose-ui-mobile-app-design

import SwiftUI
import UIKit

// Clothes Carousel
struct CarouselView: View {
    var images: Array<ImageResource>
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { imageName in
                Image(imageName).resizable()
            }
        }
        .tabViewStyle(PageTabViewStyle(
            indexDisplayMode: .always
        ))
        .frame(width:.infinity,height: 439)
    }
}

// Review Card
struct ReviewCard:View {
    let review:Review
    var body: some View {
        HStack(alignment:.top){
            Image(review.image)
                .padding(5)
                .background(
                    Circle()
                        .fill(Color.white)
                        .shadow(
                            color: Color.black.opacity(0.1),
                            radius: 4
                        )
                )
            VStack(alignment:.leading,spacing: 5){
                Text(review.name)
                    .font(.headline)
                HStack{
                    ForEach(1...review.rating,id: \.self){ rating in
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.orange)
                    }
                    ForEach(1...(MAX_RATING-review.rating),id: \.self){ rating in
                        Image(systemName: "star")
                            .foregroundColor(Color.orange)
                    }
                }
                Text(review.comment)
            }
        }
    }
}

// Popular Card
struct PopularClothesView: View {
    let clothes:PopularClothes
    var body: some View {
        VStack{
            Image(clothes.image)
                .resizable()
                .scaledToFit()
            HStack{
                Text("\(clothes.price)")
                Spacer()
                Image(systemName: (clothes.isLike ? "suit.heart.fill" : "heart"))
                    .foregroundColor(Color(hex:"0042E0"))
            }
        }
        .padding(5)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(
                    color: Color.black.opacity(0.1),
                    radius: 4
                )
        )
    }
}

// Might Like Card
struct mightLikeClothesView: View {
    let clothes:MightLikeClothes
    var body: some View {
        VStack(alignment: .leading) {
            Image(clothes.image)
                .resizable()
                .scaledToFit()
                .padding(5)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .shadow(
                            color: Color.black.opacity(0.1),
                            radius: 4
                        )
                )
            Text(clothes.desc)
                .font(.subheadline)
                .lineLimit(2)
            Text("$17,00")
                .fontWeight(.bold)
        }
    }
}

// Main View
struct ClothesProductView: View {
    var clothesProduct:ClothesProduct
    @State private var showingSelectedSheet = false
    let gridLayout = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    var body: some View {
        ZStack{
            VStack{
                ScrollView{
                    CarouselView(images: clothesProduct.images)
                    VStack(alignment:.leading){
                        HStack {
                            Text(String(format: "$%.2f", clothesProduct.price))
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                            Circle()
                                .fill(Color(hex: "FFEBEB"))
                                .overlay(
                                    Image(systemName: "arrowshape.turn.up.right")
                                        .foregroundColor(Color(hex: "B5A2A2"))
                                )
                                .frame(width: 30)
                        }
                        Text(clothesProduct.desc)
                        HStack{
                            Text("Variations")
                                .fontWeight(.heavy)
                                .font(.headline)
                            ForEach(clothesProduct.variations,id:\.self){ variation in
                                Text(variation)
                                    .padding(5)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "F9F9F9"))
                                    )
                            }
                            Spacer()
                            Circle()
                                .fill(Color(hex: "004CFF"))
                                .overlay(
                                    Image(systemName: "arrowshape.right")
                                        .foregroundColor(Color.white)
                                )
                                .frame(width: 30)
                        }
                        Text("Specifications")
                            .fontWeight(.heavy)
                        HStack{
                            ForEach(clothesProduct.specifications,id: \.self) { specification in
                                Text(specification)
                                    .padding(5)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(hex: "FFEBEB")))
                            }
                        }
                        Text("Origin")
                            .fontWeight(.heavy)
                        ForEach(clothesProduct.origin,id: \.self){ clothesOrigin in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "E5EBFC"))
                                .overlay(Text(clothesOrigin))
                                .frame(width: 54,height: 25)
                        }
                        Text("Delivery")
                            .fontWeight(.heavy)
                        ForEach(clothesProduct.deliveries,id: \.self.type){ delivery in
                            HStack{
                                Text(delivery.type)
                                Text(delivery.dateRange)
                                    .padding(5)
                                    .foregroundColor(Color(hex: "004CFF"))
                                    .background(Color(hex:"F5F8FF"))
                                Spacer()
                                Text(String(format: "%.2f", delivery.price))
                                    .fontWeight(.heavy)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color(hex: "004CFF"), lineWidth: 1)
                            )
                        }
                        Text("Rating $ Reviews")
                            .fontWeight(.heavy)
                        HStack{
                            ForEach(1...clothesProduct.rating,id: \.self){ rating in
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.orange)
                            }
                            ForEach(1...(MAX_RATING-clothesProduct.rating),id: \.self){ rating in
                                Image(systemName: "star")
                                    .foregroundColor(Color.orange)
                            }
                            Text("\(clothesProduct.rating)/\(MAX_RATING)")
                                .padding(5)
                                .background(
                                    RoundedRectangle(cornerRadius: 10).fill(Color(hex:"E5EBFC"))
                                )
                        }
                        ForEach(clothesProduct.reviews,id: \.self.image){ review in
                            ReviewCard(review: review)
                        }
                        Text("View All Reviews")
                            .padding()
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(hex: "004CFF"))
                            )
                        HStack{
                            Text("Most Popular")
                                .fontWeight(.heavy)
                            Spacer()
                            Text("Ses All")
                            Circle()
                                .fill(Color(hex: "004CFF"))
                                .overlay(
                                    Image(systemName: "arrowshape.right")
                                        .foregroundColor(Color.white)
                                )
                                .frame(width: 30)
                        }
                        HStack{
                            ForEach(clothesProduct.popular,id: \.self.image){ popular in
                                PopularClothesView(clothes: popular)
                            }
                        }
                        Text("You Might Like")
                            .fontWeight(.heavy)
                        LazyVGrid(columns: gridLayout, spacing: 20) {
                            ForEach(clothesProduct.MightLike, id: \.self.image) { mightLike in
                                mightLikeClothesView(clothes: mightLike)
                            }
                        }
                    }.padding()
                }
                HStack(){
                    Button(
                        action: {
                            
                        },
                        label: {
                            Image(systemName: "heart.fill")
                                .foregroundColor(.red)
                                .font(.title)
                        }
                    )
                    Spacer()
                    Button(
                        action: {},
                        label: {
                            Text("Add to cart")
                                .frame(width: 100)
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.black)
                                )
                        }
                    )
                    Spacer()
                    Button(
                        action: {
                            withAnimation(.easeInOut) {
                                showingSelectedSheet = !showingSelectedSheet
                            }
                        },
                        label: {
                            Text("Buy now")
                                .frame(width: 100)
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(hex: "004CFF"))
                                )
                        }
                    )
                }
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 20, trailing: 20))
            }
            .edgesIgnoringSafeArea(.top)
            .ignoresSafeArea(edges: .bottom)
            if showingSelectedSheet {
                ClothesSheetView(showingSheet: $showingSelectedSheet,clothesProduct: clothesProduct)
            }
            
        }
    }
}

#Preview {
    let popuularClothesImages:Array<ImageResource>=[
        .clothes01,
        .clothes02,
        .clothes03
    ]
    
    let mightLikeClothesImages:Array<ImageResource>=[
        .clothes04,
        .clothes05,
    ]
    var clothesProduct:ClothesProduct=ClothesProduct(
        images:[
            .clothesCarousel01,
            .clothesCarousel02
        ],
        price: 17.00,
        desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.",
        variations: ["Pink","M"],
        specifications: ["Cotton 95%","Nylon 5%"],
        origin: ["Eu"],
        deliveries: [
            Delivery(type: "Standart", dateRange: "5-7 days", price: 3.00),
            Delivery(type: "Express", dateRange: "3-2 days", price: 12.00)
        ],
        rating: 4,
        reviews: [
            Review(image: .avatar, name: "Veronika", rating: 4, comment: "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...")
        ],
        popular: [
            PopularClothes(image: .clothes01, price: 1780, isLike: true),
            PopularClothes(image: .clothes02, price: 1780, isLike: false),
            PopularClothes(image: .clothes03, price: 1780, isLike: true)
        ],
        MightLike: [
            MightLikeClothes(image: .clothes04, desc: "Lorem ipsum dolor sit amet consectetur", price: 17.00),
            MightLikeClothes(image: .clothes05, desc: "Lorem ipsum dolor sit amet consectetur", price: 17.00)
        ],
        colorOptions: [
            .clothesCarousel01,
            .clothesCarousel02,
            .clothes04,
            .clothes05,
        ],
        size: ["S","M","L","XL","XXL","XXXL"]
    )
    ClothesProductView(clothesProduct: clothesProduct)
}
