//
//  CartView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/10.
// UI:https://www.figma.com/community/file/1321464360558173342/shoppe-ecommerce-clothing-fashion-store-multi-purpose-ui-mobile-app-design

import SwiftUI

struct ClothesInCart: View {
    @State var number:Int = 1;
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 5)
                .fill(.white)
                .stroke(.white, lineWidth:15)
                .frame(width: 100,height: 100)
                .shadow(color: .gray,radius: 5)
                .overlay(
                    Image(.clothes01)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                )
            VStack(alignment:.leading){
                Text("Lorem ipsum dolor sit amet consectetur.")
                Text("Pink, Size M")
                Spacer()
                HStack{
                    Text("$17.00")
                        .bold()
                    Spacer()
                    Button(
                        action: {
                            if(number>1){
                                number-=1
                            }
                        },
                        label: {
                            Circle()
                                .fill(.white)
                                .stroke(Color(hex:"004BFE"))
                                .overlay(
                                    Image(systemName: "minus")
                                ).frame(width: 30)
                        }
                    )
                    Text("\(number)")
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
                                ).frame(width: 30)
                        }
                    )
                }
            }
            .padding(.horizontal,20)
        }.padding(.vertical,10)
    }
}

struct ClothesFromWishList: View {
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: 5)
                .fill(.white)
                .stroke(.white, lineWidth:15)
                .frame(width: 100,height: 100)
                .shadow(color: .gray,radius: 5)
                .overlay(
                    Image(.clothes02)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                )
            VStack(alignment:.leading){
                Text("Lorem ipsum dolor sit amet consectetur.")
                Text("$17.00")
                    .bold()
                Spacer()
                HStack{
                    Text("Pink")
                        .padding(5)
                        .frame(width: 70)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(.second))
                        )
                    Text("M")
                        .padding(5)
                        .frame(width: 70)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(.second))
                        )
                    Spacer()
                    Button(
                        action: {},
                        label: {
                            Image(systemName: "cart")
                                .font(.title2)
                                .foregroundColor(Color(.primary))
                        }
                    )
                }
            }
            .padding(.horizontal,20)
        }.padding(.vertical,10)
    }
}

struct CartView : View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(.vertical){
                    VStack(alignment:.leading){
                        HStack{
                            Text("Cart")
                                .bold()
                                .font(.title)
                            Text("2")
                                .bold()
                                .font(.title2)
                                .padding()
                                .background(
                                    Circle()
                                        .fill(Color(.second))
                                )
                        }
                        VStack(alignment:.leading){
                            Text("Shipping Address")
                                .font(.title3)
                                .bold()
                            HStack{
                                Text("26, Duong So 2, Thao Dien Ward, An Phu, District 2, Ho Chi Minh city")
                                    .font(.caption)
                                Spacer()
                                Image(systemName: "pencil")
                                    .font(.title3)
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(
                                        Circle().fill(Color(.primary))
                                    )
                            }
                        }
                        .padding(15)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color(hex:"F9F9F9")))
                        ClothesInCart()
                        ClothesInCart()
                        Text("From Your Wishlist")
                            .font(.title)
                            .bold()
                        ClothesFromWishList()
                        ClothesFromWishList()
                        ClothesFromWishList()
                    }
                    .padding(.horizontal,10)
                }.scrollIndicators(.hidden)
                HStack{
                    Text("Total")
                        .fontWeight(.heavy)
                    Text("$34.00")
                    Spacer()
                    NavigationLink {
                        PayView()
                    } label: {
                        Text("Checkout")
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.primary))
                            )
                    }
                }
            }.padding(.horizontal,10)
        }
    }
}
#Preview {
    CartView()
}
