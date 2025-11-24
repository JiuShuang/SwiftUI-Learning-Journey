//
//  ProfileView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/18.
//

import SwiftUI

struct ProfileView:View {
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment:.leading){
                HStack{
                    Circle()
                        .fill(.white)
                        .frame(width:60)
                        .shadow(color:.gray,radius: 3)
                        .overlay(
                            Image(.avatar)
                                .resizable()
                                .frame(width: 50,height: 50)
                                .cornerRadius(100)
                        )
                    Button(
                        action:{},
                        label:{
                            Text("My Activity")
                                .foregroundColor(.white)
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(Color(.primary))
                                .cornerRadius(20)
                        }
                    )
                    Spacer()
                    Button(
                        action:{},
                        label:{
                            Image(systemName: "qrcode.viewfinder")
                                .font(.title2)
                                .foregroundColor(Color(.primary))
                                .padding(10)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(.circle)
                        }
                    )
                    Button(
                        action:{},
                        label:{
                            Image(systemName: "archivebox")
                                .font(.title2)
                                .foregroundColor(Color(.primary))
                                .padding(10)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(.circle)
                        }
                    )
                    Button(
                        action:{},
                        label:{
                            Image(systemName: "gearshape")
                                .font(.title2)
                                .foregroundColor(Color(.primary))
                                .padding(10)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(.circle)
                        }
                    )
                }
                Text("Hello,Romina!")
                    .font(.title)
                    .fontWeight(.heavy)
                VStack(alignment:.leading){
                    Text("Announcement")
                        .fontWeight(.heavy)
                    HStack{
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit luctus libero ac vulputate.")
                            .font(.caption)
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
                }
                .padding(10)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                Text("Recently viewed")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack(spacing:20){
                    ForEach(1...5,id: \.self) { _ in
                        Circle()
                            .fill(.white)
                            .frame(width:60)
                            .shadow(color:.gray,radius: 3)
                            .overlay(
                                Image(.avatar)
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .cornerRadius(100)
                            )
                    }
                }
                Text("My Orders")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack{
                    Button(
                        action:{},
                        label:{
                            Text("To Pay")
                                .foregroundColor(Color(.primary))
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(Color(.second))
                                .cornerRadius(20)
                        }
                    )
                    Button(
                        action:{},
                        label:{
                            Text("To Recieve")
                                .foregroundColor(Color(.primary))
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(Color(.second))
                                .cornerRadius(20)
                        }
                    )
                    Button(
                        action:{},
                        label:{
                            Text("To Review")
                                .foregroundColor(Color(.primary))
                                .padding(.horizontal,20)
                                .padding(.vertical,10)
                                .background(Color(.second))
                                .cornerRadius(20)
                        }
                    )
                }
                HStack{
                    Text("New Items")
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
                    HStack(spacing:30){
                        ForEach(1...3,id:\.self) { _ in
                            VStack(alignment:.leading){
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.white)
                                    .stroke(Color.white,lineWidth:10)
                                    .shadow(color:.gray,radius:3)
                                    .frame(width: 130,height: 130)
                                    .overlay(
                                        Image(.clothes02)
                                            .resizable()
                                            .frame(width: 130,height: 130)
                                            .cornerRadius(5)
                                    )
                                Text("Lorem ipsum dolor sit amet consectetur.")
                                    .font(.callout)
                                    .padding(.vertical,5)
                                Text("$17.00")
                                    .fontWeight(.bold)
                            }
                            .frame(maxWidth:130)
                        }
                    }
                    .padding(10)
                }.frame(height:200)
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
                HStack{
                    Text("Categories")
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
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .shadow(color:Color.black.opacity(0.2),radius: 5)
                        .overlay(
                            VStack{
                                HStack{
                                    Image(.clothes01)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                    Spacer()
                                    Image(.clothes02)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                }
                                HStack{
                                    Image(.clothes03)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                    Spacer()
                                    Image(.clothes01)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                }
                                HStack{
                                    Text("Clothing")
                                        .fontWeight(.heavy)
                                    Spacer()
                                    Text("109")
                                        .padding(.horizontal,10)
                                        .padding(.vertical,3)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(50)
                                }
                            }.padding()
                        )
                        .frame(width:180,height: 220)
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.white)
                        .shadow(color:Color.black.opacity(0.2),radius: 5)
                        .overlay(
                            VStack{
                                HStack{
                                    Image(.shoe01)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                    Spacer()
                                    Image(.shoe02)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                }
                                HStack{
                                    Image(.shoe03)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                    Spacer()
                                    Image(.shoe04)
                                        .resizable()
                                        .scaledToFill()
                                        .clipped()
                                        .frame(width: 80,height: 80)
                                }
                                HStack{
                                    Text("Shoes")
                                        .fontWeight(.heavy)
                                    Spacer()
                                    Text("530")
                                        .padding(.horizontal,10)
                                        .padding(.vertical,3)
                                        .background(Color.gray.opacity(0.2))
                                        .cornerRadius(50)
                                }
                            }.padding()
                        )
                        .frame(width:180,height: 220)
                }
                HStack{
                    Text("Flash Sale")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Spacer()
                    Image(systemName: "clock")
                        .foregroundColor(Color(.primary))
                    Text("00")
                        .bold()
                        .padding(5)
                        .background(Color(hex: "FFEBEB"))
                        .cornerRadius(10)
                    Text("36")
                        .bold()
                        .padding(5)
                        .background(Color(hex: "FFEBEB"))
                        .cornerRadius(10)
                    Text("58")
                        .bold()
                        .padding(5)
                        .background(Color(hex: "FFEBEB"))
                        .cornerRadius(10)
                }
                HStack{
                    ForEach(1...3,id: \.self){ _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                            .shadow(color:.black.opacity(0.2),radius: 5)
                            .overlay {
                                ZStack(alignment:.topTrailing){
                                    Image(.clothes02)
                                        .resizable()
                                        .frame(width: 110,height: 110)
                                    Text("-20%")
                                        .bold()
                                        .foregroundColor(.white)
                                        .padding(5)
                                        .background(.pink)
                                        .cornerRadius(10)
                                }
                            }.frame(width: 120,height: 120)
                    }
                }
                Text("Top Products")
                    .fontWeight(.heavy)
                HStack(spacing:20){
                    ForEach(1...5,id:\.self){ _ in
                        Circle()
                            .fill(.white)
                            .frame(width:60)
                            .shadow(color:.gray,radius: 3)
                            .overlay(
                                Image(.shoe01)
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .cornerRadius(100)
                            )
                    }
                }
                Text("Just For You")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack(){
                    VStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.white)
                            .stroke(Color.white,lineWidth:10)
                            .shadow(color:.gray,radius:3)
                            .frame(width: 180,height: 200)
                            .overlay(
                                Image(.clothes02)
                                    .resizable()
                                    .frame(width: 180,height: 200)
                                    .cornerRadius(5)
                            )
                        Text("Lorem ipsum dolor sit amet consectetur.")
                            .font(.callout)
                            .padding(.vertical,5)
                        Text("$17.00")
                            .fontWeight(.bold)
                    }
                    .frame(maxWidth:180)
                    Spacer()
                    VStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 5)
                            .fill(.white)
                            .stroke(Color.white,lineWidth:10)
                            .shadow(color:.gray,radius:3)
                            .frame(width: 180,height: 200)
                            .overlay(
                                Image(.clothes02)
                                    .resizable()
                                    .frame(width: 180,height: 200)
                                    .cornerRadius(5)
                            )
                        Text("Lorem ipsum dolor sit amet consectetur.")
                            .font(.callout)
                            .padding(.vertical,5)
                        Text("$17.00")
                            .fontWeight(.bold)
                    }
                    .frame(maxWidth:180)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
