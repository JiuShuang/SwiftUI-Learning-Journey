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
                ScrollView(.horizontal){
                    HStack(spacing:30){
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
                    .padding(10)
                }
                Text("Top Products")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack(spacing:20){
                    Circle()
                        .fill(.white)
                        .frame(width:60)
                        .shadow(color:.gray,radius: 3)
                        .overlay(
                            Image(.clothes01)
                                .resizable()
                                .frame(width: 50,height: 50)
                                .cornerRadius(100)
                        )
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
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}
