//
//  EditContactInfoView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/14.
//

import SwiftUI

struct EditContactInfoView: View {
    @State var name : String = "Mike"
    @State var phone : String = "+91987654321"
    @State var email : String = "gmail@example.com"
    @Binding var showContactInfoSheet:Bool
    
    
    var body: some View {
        Text("Contact Infomation")
            .font(.title)
            .bold()
            .frame(maxWidth: .infinity, minHeight: 60,alignment: .leading)
            .padding()
            .background(Color(.second))
        VStack(alignment:.leading){
            Text("Name")
            TextField("Please Enter Name",text:$name)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Text("Phone")
            TextField("Please Enter Phone",text:$phone)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Text("Email")
            TextField("Please Enter Email",text:$email)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Button(
                action:{
                    showContactInfoSheet=false;
                },
                label: {
                    Text("Save Changes")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.primary))
                        )
                }
            )
        }.padding(.horizontal,20)
            .padding(.vertical,10)
    }
}
