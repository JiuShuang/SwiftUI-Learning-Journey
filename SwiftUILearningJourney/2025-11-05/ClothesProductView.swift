//
//  ClothesProductView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/5.

import SwiftUI


struct CarouselView: View {
    let images:Array<ImageResource> = [
        .clothesCarousel01,
        .clothesCarousel02
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { imageName in
                Image(imageName)
                    .resizable()
            }
        }
        .tabViewStyle(PageTabViewStyle(
            indexDisplayMode: .always
        ))
        .frame(width:.infinity,height: 439)
    }
}


struct ClothesProductView: View {
    
    let popuularClothesImages:Array<ImageResource>=[
        .clothes01,
        .clothes02,
        .clothes03
    ]
    
    let mightLikeClothesImages:Array<ImageResource>=[
        .clothes04,
        .clothes05,
    ]
    let gridLayout = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    var body: some View {
        ScrollView{
            CarouselView()
            VStack(alignment:.leading){
                HStack {
                    Text("$17,00")
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
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam arcu mauris, scelerisque eu mauris id, pretium pulvinar sapien.")
                HStack{
                    Text("Variations")
                        .fontWeight(.heavy)
                        .font(.headline)
                    Text("Pink")
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "F9F9F9"))
                        )
                    Text("M")
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "F9F9F9"))
                        )
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
                    Text("Cotton 95%")
                        .padding(5)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "FFEBEB")))
                    Text("Nylon 5%")
                        .padding(5)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(hex: "FFEBEB")))
                }
                Text("Origin")
                    .fontWeight(.heavy)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: "E5EBFC"))
                    .overlay(Text("Eu"))
                    .frame(width: 54,height: 25)
                Text("Delivery")
                    .fontWeight(.heavy)
                HStack{
                    Text("Standart")
                    Text("5-7days")
                        .padding(5)
                        .foregroundColor(Color(hex: "004CFF"))
                        .background(Color(hex:"F5F8FF"))
                    Spacer()
                    Text("$3,00")
                        .fontWeight(.heavy)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hex: "004CFF"), lineWidth: 1)
                )
                HStack{
                    Text("Express")
                    Text("1-2days")
                        .padding(5)
                        .foregroundColor(Color(hex: "004CFF"))
                        .background(Color(hex:"F5F8FF"))
                    Spacer()
                    Text("$12,00")
                        .fontWeight(.heavy)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hex: "004CFF"), lineWidth: 1)
                )
                Text("Rating $ Reviews")
                    .fontWeight(.heavy)
                HStack{
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.orange)
                    Image(systemName: "star")
                        .foregroundColor(Color.orange)
                    Text("4/5")
                        .padding(5)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(Color(hex:"E5EBFC"))
                        )
                }
                HStack(alignment:.top){
                    Image(.avatar)
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
                        Text("Veronika")
                            .font(.headline)
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                            Image(systemName: "star")
                                .foregroundColor(Color.orange)
                        }
                        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed ...")
                    }
                }
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
                    ForEach(popuularClothesImages,id: \.self){ clothesImage in
                        VStack{
                            Image(clothesImage)
                                .resizable()
                                .scaledToFit()
                            HStack{
                                Text("1780")
                                Spacer()
                                Image(systemName: "suit.heart.fill")
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
                Text("You Might Like")
                    .fontWeight(.heavy)
                LazyVGrid(columns: gridLayout, spacing: 20) {
                    ForEach(mightLikeClothesImages, id: \.self) { clothesImage in
                        VStack(alignment: .leading) {
                            Image(clothesImage)
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
                            Text("Lorem ipsum dolor sit amet consectetur")
                                .font(.subheadline) // 缩小字体避免换行溢出
                                .lineLimit(2) // 限制最大行数，超出省略
                            Text("$17,00")
                                .fontWeight(.bold)
                        }
                    }
                }
            }.padding()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    ClothesProductView()
}
