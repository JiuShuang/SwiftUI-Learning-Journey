//
//  RecentView.swift
//  SwiftUILearningJourney
//
//  Created by jiushuang on 2025/12/12.
//

import SwiftUI

struct RecentView:View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Text("Recently Viewd")
                    .font(.title)
                    .fontWeight(.heavy)
                HStack{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(.second))
                        .frame(width: 170,height: 40)
                        .overlay {
                            HStack{
                                Spacer()
                                Text("Today")
                                    .bold()
                                    .foregroundColor(Color(.primary))
                                    .padding(.horizontal,10)
                                Spacer()
                                    .overlay(alignment: .trailing){
                                        Circle()
                                            .fill(Color(.primary))
                                            .stroke(.white,lineWidth:4)
                                            .frame(width: 30,height: 30)
                                            .overlay {
                                                Image(systemName: "checkmark")
                                                    .foregroundColor(.white)
                                                    .fontWeight(.heavy)
                                            }
                                    }
                            }
                            .padding(5)
                        }
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color(hex: "F9F9F9"))
                        .frame(width: 170,height: 40)
                        .overlay {
                            Text("Yesterday")
                                .bold()
                                .padding(.horizontal,10)
                        }
                    Circle()
                        .fill(Color(.primary))
                        .frame(width: 30,height: 30)
                        .overlay {
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                        }
                }
                .padding(.vertical,10)
                ForEach(1...4,id: \.self){ _ in
                    HStack{
                        VStack(alignment:.leading){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .shadow(color:.black.opacity(0.2),radius: 5)
                                .overlay(content: {
                                    Image(.shoe01)
                                        .resizable()
                                        .shadow(color:.black.opacity(0.2),radius: 5)
                                        .cornerRadius(10)
                                        .frame(width: 170,height: 190)
                                })
                                .frame(width: 180,height: 200)
                            Text("Lorem ipsum dolor sit amet consectetur")
                                .font(.callout)
                            Text("$17.00")
                                .font(.title3)
                                .bold()
                        }
                        .frame(maxWidth:180)
                        Spacer()
                        VStack(alignment:.leading){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .shadow(color:.black.opacity(0.2),radius: 5)
                                .overlay(content: {
                                    Image(.shoe01)
                                        .resizable()
                                        .shadow(color:.black.opacity(0.2),radius: 5)
                                        .cornerRadius(10)
                                        .frame(width: 170,height: 190)
                                })
                                .frame(width: 180,height: 200)
                            Text("Lorem ipsum dolor sit amet consectetur")
                                .font(.callout)
                            Text("$17.00")
                                .font(.title3)
                                .bold()
                        }
                        .frame(maxWidth:180)
                    }
                }
            }.padding(10)
        }
    }
}

#Preview {
    RecentView()
}
