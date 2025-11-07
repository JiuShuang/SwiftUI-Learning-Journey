//
//  ClothesSheetView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/7.
//

import SwiftUI
import UIKit

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let blurEffect = UIBlurEffect(style: style)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        return visualEffectView
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}

struct ClothesSheetView: View {
    
    @Binding var showingSheet:Bool
    var clothesProduct:ClothesProduct
    
    @State private var number:Int=1
    @State private var selectedSize:Int=0
    @State private var selectedColor:Int=0
    
    var body: some View {
        ZStack(alignment:.bottom){
            BlurView(style: .systemUltraThinMaterialLight)
                    .ignoresSafeArea()
                    .onTapGesture {
                        showingSheet = false
                    }
            VStack(alignment:.leading){
                HStack(alignment:.bottom){
                    Image(clothesProduct.images[0])
                        .resizable()
                        .cornerRadius(12)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(width: 100,height: 100)
                    VStack{
                        Text(String(format: "$%.2f", clothesProduct.price))
                            .font(.title)
                            .fontWeight(.bold)
                        HStack{
                            ForEach(clothesProduct.variations,id: \.self){ variation in
                                Text(variation)
                                    .padding(5)
                                    .background(
                                        RoundedRectangle(cornerRadius: 5)
                                            .fill(Color(hex:"E5EBFC"))
                                    )
                            }
                        }
                    }
                }
                Text("Color Options")
                    .fontWeight(.heavy)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(clothesProduct.colorOptions.indices, id: \.self) { index in
                            let colorOption = clothesProduct.colorOptions[index]
                            ZStack(alignment:.bottomLeading){
                                Image(colorOption)
                                    .resizable()
                                    .cornerRadius(12)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .frame(width: 100, height: 100)
                                    .clipped()
                                if(selectedColor==index){
                                    Circle()
                                        .fill(Color(hex:"004CFF"))
                                        .stroke(Color.white,lineWidth: 2)
                                        .overlay(
                                            Image(systemName:"checkmark")
                                                .foregroundColor(.white)
                                        )
                                        .frame(width:25)
                                        .padding(5)
                                }
                            }.onTapGesture {
                                selectedColor=index
                            }
                        }
                    }
                }
                Text("Size")
                    .fontWeight(.heavy)
                HStack{
                    ForEach(clothesProduct.size.indices,id: \.self){ index in
                        let clothesSize=clothesProduct.size[index]
                        Text(clothesSize)
                            .padding(5)
                            .frame(width:55)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(selectedSize==index ? Color(hex:"004CFF") : Color.white)
                                    .fill(selectedSize==index ? Color(hex:"E5EBFC") : Color(hex:"F9F9F9") )
                            ).onTapGesture {
                                selectedSize=index
                            }
                    }
                }
                HStack{
                    Text("Quantity")
                        .fontWeight(.heavy)
                    Spacer()
                    Button(
                        action: {
                            if(number>0){
                                number-=1
                            }
                        },
                        label: {
                            Circle()
                                .fill(.white)
                                .stroke(Color(hex:"004BFE"))
                                .overlay(
                                    Image(systemName: "minus")
                                        .font(.largeTitle)
                                ).frame(width: 50)
                        }
                    )
                    Text("\(number)")
                        .font(.title)
                        .padding(.vertical,5)
                        .padding(.horizontal,20)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex:"E5EBFC"))
                        )
                    Button(
                        action: {
                            number+=1
                        },
                        label: {
                            Circle()
                                .fill(.white)
                                .stroke(Color(hex:"004BFE"))
                                .overlay(
                                    Image(systemName: "plus")
                                        .font(.largeTitle)
                                ).frame(width: 50)
                        }
                    )
                }
                    .padding(.vertical,20)
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
            }
            .padding(30)
            .background(.white)
            .frame(maxWidth: .infinity)
        }
        .ignoresSafeArea()
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
    @State var showing = true
    ClothesSheetView(showingSheet: $showing,clothesProduct: clothesProduct)
}
