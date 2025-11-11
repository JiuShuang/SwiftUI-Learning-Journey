//
//  CartView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/10.
// UI:https://www.figma.com/community/file/1321464360558173342/shoppe-ecommerce-clothing-fashion-store-multi-purpose-ui-mobile-app-design

import SwiftUI

struct CartView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    VStack(alignment:.leading){
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
                        VStack(alignment:.leading){
                            Text("Contact Information")
                                .font(.title3)
                                .bold()
                            HStack{
                                Text("+84932000000\namandamorgan@example.com")
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
                        HStack{
                            Text("Items")
                                .font(.title)
                                .bold()
                            Text("2")
                                .font(.title2)
                                .bold()
                                .padding(10)
                                .background(Circle().fill(Color(hex:"E5EBFC")))
                        }
                        HStack{
                            ZStack(alignment:.topTrailing){
                                Circle()
                                    .fill(Color.white)
                                    .stroke(Color.white, lineWidth: 15)
                                    .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image(.clothes01)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                    )
                                Text("1")
                                    .font(.title2)
                                    .bold()
                                    .padding(10)
                                    .background(Circle().fill(Color(hex:"E5EBFC")))
                                    .offset(x: 10, y: -20)
                            }
                            Text("Lorem ipsum dolor sit amet consectetur.")
                                .padding(.horizontal,15)
                            Spacer()
                            Text("$17.00")
                                .font(.title3)
                                .bold()
                        }
                        .padding(10)
                        HStack{
                            ZStack(alignment:.topTrailing){
                                Circle()
                                    .fill(Color.white)
                                    .stroke(Color.white, lineWidth: 15)
                                    .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 0)
                                    .frame(width: 70, height: 70)
                                    .overlay(
                                        Image(.clothes02)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 70, height: 70)
                                            .clipShape(Circle())
                                    )
                                Text("1")
                                    .font(.title2)
                                    .bold()
                                    .padding(10)
                                    .background(Circle().fill(Color(hex:"E5EBFC")))
                                    .offset(x: 10, y: -20)
                            }
                            Text("Lorem ipsum dolor sit amet consectetur.")
                                .padding(.horizontal,15)
                            Spacer()
                            Text("$17.00")
                                .font(.title3)
                                .bold()
                        }
                            .padding(10)
                        Text("Shipping Options")
                            .font(.title)
                            .bold()
                        HStack{
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .padding(5)
                                .background(
                                    Circle().fill(Color(.primary))
                                )
                            Text("Standard").bold()
                            Text("5-7 days")
                                .foregroundColor(Color(.primary))
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(hex: "F5F8FF"))
                                )
                            Spacer()
                            Text("FREE")
                                .fontWeight(.heavy)
                        }
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color(hex: "E5EBFC")))
                        HStack{
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .padding(5)
                                .background(
                                    Circle().fill(Color(.primary))
                                )
                            Text("Express").bold()
                            Text("1-2 days")
                                .foregroundColor(Color(.primary))
                                .padding(8)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(hex: "F5F8FF"))
                                )
                            Spacer()
                            Text("$12.00")
                                .fontWeight(.heavy)
                        }
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color(hex:"F9F9F9")))
                        Text("Payment Method")
                            .font(.title)
                            .bold()
                        Text("Card")
                            .foregroundColor(Color(.primary))
                            .padding(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color(hex:"E5EBFC"))
                            )
                    }
                }
                .scrollIndicators(.hidden)
                HStack{
                    Text("Total")
                        .fontWeight(.heavy)
                    Text("$34.00")
                    Spacer()
                    Button(
                        action: {
                            
                        },
                        label: {
                            Text("Pay")
                                .foregroundColor(.white)
                        }
                    )
                    .padding(.horizontal,40)
                    .padding(.vertical,10)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                    )
                }
            }
            .padding(.horizontal,10)
            .navigationTitle("Payment")
        }
    }
}

#Preview {
    CartView()
}
