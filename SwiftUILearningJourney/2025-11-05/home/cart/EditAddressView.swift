//
//  EditAddressView.swift
//  SwiftUILearningJourney
//
//  Created by Mac on 2025/11/14.
//
import SwiftUI
struct EditAddressView : View {
    @State var country : String = "India"
    @State var address : String = "Magadi Main Rd, next to Prasanna Theatre, Cholourpalya"
    @State var town : String = "Bengaluru, Karnataka 560023"
    @State var postcode : String = "70000"
    @Binding var showAddressSheet:Bool
    
    
    var body: some View {
        Text("Shipping Address")
            .font(.title)
            .bold()
            .frame(maxWidth: .infinity, minHeight: 60,alignment: .leading)
            .padding()
            .background(Color(.second))
        VStack(alignment:.leading){
            Text("Country")
            TextField("Please Enter Country",text:$country)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Text("Town/City")
            TextField("Please Enter Town/City",text:$town)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Text("Postcode")
            TextField("Please Enter postcode",text:$postcode)
                .padding()
                .background(Color(.second))
                .cornerRadius(10)
            Button(
                action:{
                    showAddressSheet=false;
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

