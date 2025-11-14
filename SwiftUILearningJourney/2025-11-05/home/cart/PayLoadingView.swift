//
//  PayLoadingView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/14.
//
import SwiftUI

enum PayStatus{
    case loading
    case error
    case success
}


struct PayLoadingView : View {
    
    @Binding var status:PayStatus
    
    var body: some View {
        switch status{
        case .loading:
            loading()
        case .error:
            error()
        case .success:
            success()
        }
    }
    
    func loading()->some View{
        AnyView(
            ZStack(alignment:.top){
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(maxHeight: 150)
                    .overlay(
                        VStack{
                            Text("Paymen is in progress")
                                .font(.title2)
                                .bold()
                            Text("Please, wait a few moments")
                                .font(.caption)
                        }
                    )
                Circle()
                    .fill(.white)
                    .shadow(color:.gray.opacity(0.5),radius: 5)
                    .frame(width: 80)
                    .overlay(
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                            .scaleEffect(1.8)
                    ).offset(x:0,y:-50)
            }
            .shadow(color:.gray.opacity(0.5),radius: 5)
            .padding(.horizontal,40)
        )
    }
    
    func error() -> some View{
        AnyView(
            ZStack(alignment:.top){
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(maxHeight: 190)
                    .shadow(color:.gray.opacity(0.5),radius: 5)
                    .overlay(
                        VStack{
                            Text("We couldn't proceed your payment")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.center)
                            Text("Please, change your payment method or try again")
                                .font(.caption)
                            HStack{
                                Button(
                                    action:{},
                                    label: {
                                        Text("Try Again")
                                            .foregroundColor(.white)
                                            .padding(.horizontal,20)
                                            .padding(.vertical,10)
                                            .frame(width: 120)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color.black)
                                            )
                                            
                                    }
                                )
                                Spacer()
                                Button(
                                    action:{},
                                    label: {
                                        Text("Cancel")
                                            .foregroundColor(.black)
                                            .padding(.horizontal,20)
                                            .padding(.vertical,10)
                                            .frame(width: 120)
                                            .background(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color(hex:"E7E8EB"))
                                            )
                                    }
                                )
                            }.padding(.horizontal,30)
                        }
                    )
                Circle()
                    .fill(Color(hex: "F1AEAE"))
                    .frame(width: 80)
                    .shadow(color: .gray.opacity(0.5), radius: 5)
                    .overlay(
                        Image(systemName: "exclamationmark.circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    )
                    .offset(x: 0, y: -50)
            }
            .padding(.horizontal,40)
        )
    }
    
    func success() -> some View{
        AnyView(
            ZStack(alignment:.top){
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(maxHeight: 150)
                    .shadow(color:.gray.opacity(0.5),radius: 5)
                    .overlay(
                        VStack{
                            Text("Done!")
                                .font(.title2)
                                .bold()
                                .multilineTextAlignment(.center)
                            Text("You card has been successfully charged")
                                .font(.caption)
                            Button(
                                action:{},
                                label: {
                                    Text("Track My Order")
                                        .foregroundColor(.black)
                                        .padding(.horizontal,20)
                                        .padding(.vertical,10)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .fill(Color(hex:"E7E8EB"))
                                        )
                                }
                            )
                        }
                    )
                Circle()
                    .fill(Color(.primary))
                    .frame(width: 80)
                    .shadow(color: .gray.opacity(0.5), radius: 5)
                    .overlay(
                        Image(systemName: "checkmark")
                            .font(.system(size: 40))
                            .foregroundColor(Color.white)
                    )
                    .offset(x: 0, y: -50)
            }
            .padding(.horizontal,40)
        )
    }
}

#Preview {
    @State var status = PayStatus.error
    PayLoadingView(status: $status)
}
