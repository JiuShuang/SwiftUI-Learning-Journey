//
//  ShopView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/10.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        ZStack(alignment:.topTrailing){
            Image(.shopBubbles)
            ScrollView{
                VStack(alignment:.leading){
                    HStack{
                        VStack(alignment:.leading){
                            Text("Flash Sale")
                                .font(.title)
                                .fontWeight(.heavy)
                            Text("Choose Your Discount")
                        }
                        Spacer()
                        Image(systemName: "clock")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                        Text("00")
                            .bold()
                            .padding(5)
                            .background(.white)
                            .cornerRadius(10)
                        Text("36")
                            .bold()
                            .padding(5)
                            .background(.white)
                            .cornerRadius(10)

                        Text("58")
                            .bold()
                            .padding(5)
                            .background(.white)
                            .cornerRadius(10)

                    }
                    HStack {
                        Text("All")
                            .frame(maxWidth: .infinity)
                        Text("10%")
                            .frame(maxWidth: .infinity)
                        Text("20%")
                            .foregroundColor(Color(.primary))
                            .padding(5)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .stroke(Color(.primary),lineWidth:2)
                            )
                            .frame(maxWidth: .infinity)
                        Text("30%")
                            .frame(maxWidth: .infinity)
                        Text("40%")
                            .frame(maxWidth: .infinity)
                        Text("50%")
                            .frame(maxWidth: .infinity)
                    }
                    .padding(10)
                    .background(Color(hex:"F9F9F9"))
                    .cornerRadius(10)
                    Text("20% Discount")
                        .fontWeight(.heavy)
                        .font(.title2)
                    ForEach(1...2,id: \.self){ _ in
                        HStack{
                            VStack(alignment:.leading){
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .shadow(color:.black.opacity(0.2),radius: 5)
                                    .overlay(
                                        ZStack(alignment:.topTrailing){
                                            Image(.clothes01)
                                                .resizable()
                                                .frame(width: 160,height: 180)
                                            Text("-20%")
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding(5)
                                                .background(Color(hex:"FF5790"))
                                                .cornerRadius(10)
                                        }
                                    )
                                    .frame(width: 170,height: 190)
                                Text("Lorem ipsum dolor sit amet consectetur")
                                HStack{
                                    Text("$16.00")
                                        .fontWeight(.heavy)
                                    Text("$20.00")
                                        .foregroundColor(Color(hex:"F1AEAE"))
                                        .strikethrough()
                                }
                            }
                            .frame(maxWidth:180)
                            Spacer()
                            VStack(alignment:.leading){
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .shadow(color:.black.opacity(0.2),radius: 5)
                                    .overlay(
                                        ZStack(alignment:.topTrailing){
                                            Image(.clothes01)
                                                .resizable()
                                                .frame(width: 160,height: 180)
                                            Text("-20%")
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding(5)
                                                .background(Color(hex:"FF5790"))
                                                .cornerRadius(10)
                                        }
                                    )
                                    .frame(width: 170,height: 190)
                                Text("Lorem ipsum dolor sit amet consectetur")
                                HStack{
                                    Text("$16.00")
                                        .fontWeight(.heavy)
                                    Text("$20.00")
                                        .foregroundColor(Color(hex:"F1AEAE"))
                                        .strikethrough()
                                }
                            }
                            .frame(maxWidth:180)
                        }
                    }
                    HStack{
                        Text("Most Popular")
                            .font(.title2)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("See All")
                            .bold()
                        Button(
                            action:{},
                            label:{
                                Image(systemName: "arrowshape.right.fill")
                                    .foregroundColor(.white)
                                    .padding(8)
                                    .background(Color(.primary))
                                    .clipShape(.circle)
                            }
                        )
                    }
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20){
                            ForEach(1...3,id: \.self){ _ in
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .shadow(color:Color.black.opacity(0.2),radius: 5)
                                    .overlay(
                                        VStack{
                                            Image(.clothes03)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 120,height: 150)
                                                .clipped()
                                                .cornerRadius(10)
                                            HStack{
                                                Text("1780")
                                                    .bold()
                                                Image(systemName: "heart.fill")
                                                    .foregroundColor(Color(.primary))
                                                Spacer()
                                                Text("New")
                                            }
                                        }
                                        .padding(10)
                                    )
                                    .frame(width: 140,height: 200)
                            }
                        }.padding(10)
                    }
                }
                .padding(.horizontal,10)
            }.padding(.top,50)
        }.edgesIgnoringSafeArea(.top)
    }
}


#Preview{
    ShopView()
}
