//
//  WishListView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/10.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Text("Wishlist")
                    .font(.title)
                    .fontWeight(.heavy)
                HStack{
                    Text("Recently viewed")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button {
                        
                    } label: {
                        Circle()
                            .fill(Color(.primary))
                            .frame(width: 30,height: 30)
                            .overlay {
                                Image(systemName: "arrowshape.right")
                                    .foregroundColor(.white)
                            }
                    }

                }
                HStack{
                    ForEach(1...5,id: \.self){ _ in
                        Circle()
                            .fill(.white)
                            .shadow(color: Color.black.opacity(0.2), radius: 5)
                            .overlay(content: {
                                Image(.clothes02)
                                    .resizable()
                                    .frame(width: 60)
                                    .clipShape(.circle)
                            })
                            .frame(width:70)
                    }
                    
                }
                ForEach(1...8,id:\.self){ _ in
                    HStack{
                        ZStack(alignment: .bottomLeading){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .shadow(color:Color.black.opacity(0.2),radius: 5)
                                .overlay(content: {
                                    Image(.shoe03)
                                        .resizable()
                                        .frame(width: 150,height: 130)
                                })
                                .frame(width: 160,height: 140)
                            Circle()
                                .fill(.white)
                                .overlay(content: {
                                    Image(systemName: "trash.fill")
                                        .font(.title2)
                                        .foregroundColor(Color(hex:"FF5790"))
                                })
                                .offset(x:10,y:-10)
                                .frame(width:40)
                        }
                        VStack(alignment:.leading){
                            Text("Lorem ipsum dolor sit amet consectetur.")
                            Spacer()
                            Text("$17,00")
                                .fontWeight(.heavy)
                                .font(.title3)
                            Spacer()
                            HStack{
                                Text("Pink")
                                    .padding(.horizontal,10)
                                    .padding(.vertical,5)
                                    .background(Color(.second))
                                    .cornerRadius(5)
                                Text("M")
                                    .padding(.horizontal,10)
                                    .padding(.vertical,5)
                                    .background(Color(.second))
                                    .cornerRadius(5)
                                Spacer()
                                Button {
                                    
                                } label: {
                                    Image(systemName: "cart")
                                        .font(.title)
                                        .foregroundColor(Color(.primary))
                                }
                            }
                        }.padding(.horizontal,10)
                    }
                    .padding(.vertical,10)
                }
            }.padding(10)
        }
    }
}

#Preview {
    WishListView()
}
