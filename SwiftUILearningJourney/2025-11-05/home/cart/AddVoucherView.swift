//
//  AddVoucherView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/13.
//

import SwiftUI

struct DashedDivider: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}

struct VoucherCard : View {
    
    var voucherModel:VoucherModel
    var onTap:()->Void
    
    var body: some View {
        ZStack{
            VStack(alignment:.leading){
                HStack{
                    Text("Voucher")
                        .bold()
                        .foregroundColor(Color(.primary))
                    Spacer()
                    Text(voucherModel.date)
                        .padding(5)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Color(hex:"FFEBEB"))
                        )
                }
                .padding(.horizontal,10)
                .padding(.vertical,5)
                DashedDivider()
                        .stroke(style: StrokeStyle(
                                    dash: [5, 3],
                                    dashPhase: 0
                                ))
                        .foregroundColor(Color(.primary))
                                .frame(height: 1)
                HStack{
                    Image(systemName: "gift")
                        .foregroundColor(Color(.primary))
                    Text(voucherModel.title)
                        .font(.title2)
                        .bold()
                }
                .padding(.horizontal,20)
                HStack{
                    Text(voucherModel.desc)
                    Spacer()
                    Button(
                        action: {
                            onTap();
                        },
                        label: {
                            Text("Apply")
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding(.horizontal,20)
                                .padding(.vertical,5)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color(.primary))
                                )
                        }
                    )
                }
                .padding(.horizontal,20)
                .padding(.bottom,10)
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.primary),lineWidth: 2)
                    .fill(.white)
            )
            .padding()
            HStack {
                Circle()
                    .fill(.white)
                    .stroke(Color(.primary), lineWidth: 1)
                    .frame(width: 30, height: 30)
                    .offset(x: -15)
                    .clipShape(Rectangle().size(width: 15, height: 30))
                    .offset(x: 15)
                Spacer()
                Circle()
                    .fill(.white)
                    .stroke(Color(.primary), lineWidth: 1)
                    .frame(width: 30, height: 30)
                    .clipShape(
                        Rectangle()
                            .size(width: 15, height: 30)
                    )
                }
        }
    }
}

struct AddVoucherView : View {
    @Binding var selectedVoucher:VoucherModel?
    @Binding var addVoucher: Bool
    var voucherList:Array<VoucherModel>=[
        VoucherModel(id: 1, date: "Valid Until 5.16.20", title: "First Purchase", desc: "5% off for your next order",discount:"5%"),
        VoucherModel(id: 2, date: "Valid Until 6.20.20", title: "Gift From Customer Care", desc: "15% off your next purchase",discount:"15%")
    ]
    
    var body: some View {
        ScrollView{
            Text("Active Vouchers")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, minHeight: 60,alignment: .leading)
                .padding()
                .background(Color(.second))
            VStack(alignment:.leading){
                ForEach(voucherList,id: \.self.id) { voucher in
                    VoucherCard(
                        voucherModel: voucher,
                        onTap: {
                            addVoucher=false
                            selectedVoucher=voucher;
                        }
                    )
                }
            }
        }
    }
}

