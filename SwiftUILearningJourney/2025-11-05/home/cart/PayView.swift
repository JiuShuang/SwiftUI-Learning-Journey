//
//  PayView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/12.
//

import SwiftUI

struct ShippingOptionsView: View {
    var optionId:Int
    var optionType:String
    var optionTime:String
    var optionPrice:String
    @Binding var selectedOption:Int
    var body: some View {
        HStack{
            Image(systemName: "checkmark")
                .foregroundColor(optionId==selectedOption ? .white:.clear)
                .padding(5)
                .background(
                    Circle().fill(optionId==selectedOption ? Color(.primary):Color(hex: "EFEFEF"))
                )
            Text(optionType)
                .frame(width: 80)
                .bold()
            Text(optionTime)
                .foregroundColor(Color(.primary))
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color(hex: "F5F8FF"))
                )
            Spacer()
            Text(optionPrice)
                .fontWeight(.heavy)
        }
        .padding(8)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color(hex: optionId==selectedOption ? "E5EBFC" : "F9F9F9")))
        .onTapGesture {
            selectedOption=optionId
        }
    }
}

struct itemView:View {
    var image:ImageResource
    var number:Int
    var desc:String
    var price:Double
    var body: some View {
        HStack{
            ZStack(alignment:.topTrailing){
                Circle()
                    .fill(Color.white)
                    .stroke(Color.white, lineWidth: 15)
                    .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 0)
                    .frame(width: 70, height: 70)
                    .overlay(
                        Image(image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70)
                            .clipShape(Circle())
                    )
                Text("\(number)")
                    .font(.title2)
                    .bold()
                    .padding(10)
                    .background(Circle().fill(Color(hex:"E5EBFC")))
                    .offset(x: 10, y: -20)
            }
            Text(desc)
                .padding(.horizontal,15)
            Spacer()
            Text(String(format: "%.2f",price))
                .font(.title3)
                .bold()
        }
        .padding(10)
    }
}


struct PayView: View {
    
    @State private var selectedOption:Int = 0
    @State private var addVoucher:Bool = false
    @State var selectedVoucher:VoucherModel?
    
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView{
                    VStack(alignment:.leading){
                        Text("Payment")
                            .font(.title)
                            .bold()
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
                            Spacer()
                            selectedVoucher==nil
                            ?AnyView(
                                Button(
                                    action:{
                                        addVoucher=true
                                    },
                                    label:{
                                        Text("Add Voucher")
                                            .foregroundColor(Color(.primary))
                                            .font(.callout)
                                            .padding(.horizontal,10)
                                            .padding(.vertical,5)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(.white)
                                                    .stroke(Color(.primary))
                                            )
                                    }
                                ).sheet(isPresented: $addVoucher, content: {
                                    AddVoucherView(
                                        selectedVoucher: $selectedVoucher,
                                        addVoucher: $addVoucher
                                    ).presentationDetents([.medium])
                                })
                            )
                            :AnyView(
                                HStack{
                                    Text("\(selectedVoucher!.discount) Discount")
                                    Image(systemName: "xmark")
                                        .onTapGesture {
                                            selectedVoucher=nil
                                        }
                                }.foregroundColor(.white)
                                    .padding(5)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color(.primary))
                                    )
                            )
                        }
                        itemView(image: .clothes01, number: 1, desc: "Lorem ipsum dolor sit amet consectetur.", price: 17.00)
                        itemView(image: .clothes02, number: 1, desc: "Lorem ipsum dolor sit amet consectetur.", price: 17.00)
                        Text("Shipping Options")
                            .font(.title)
                            .bold()
                        ShippingOptionsView(optionId: 0, optionType: "Standard", optionTime: "5-7 days",optionPrice: "Free",selectedOption: $selectedOption)
                        ShippingOptionsView(optionId: 1, optionType: "Express", optionTime: "1-2 days", optionPrice: "$12.00",selectedOption: $selectedOption)
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
                                .padding(.horizontal,40)
                                .padding(.vertical,10)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.black)
                                )
                        }
                    )
                }
            }
            .padding(.horizontal,10)
            .blur(radius: addVoucher ? 8 : 0)
        }
    }
    
}

#Preview{
    PayView()
}
