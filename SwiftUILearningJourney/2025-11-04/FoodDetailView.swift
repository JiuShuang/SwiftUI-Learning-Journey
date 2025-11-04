
import SwiftUI

struct CustomStepper: View {
    @Binding var value: Int
    var range: ClosedRange<Int> = 1...10
    var step: Int = 1
    var body: some View {
        HStack(spacing: 0) {
            Button(action: decrease) {
                Image(systemName: "minus")
                    .frame(width: 20)
                    .foregroundColor(.white)
            }
            .disabled(value <= range.lowerBound)
            Text("\(value)")
                .font(.headline)
                .frame(width: 30)
                .foregroundColor(Color.white)
            Button(action: increase) {
                Image(systemName: "plus")
                    .frame(width: 20)
                    .foregroundColor(.white)
            }
            .disabled(value >= range.upperBound)
        }
        .frame(height: 38)
        .padding(.horizontal,10)
        .background(Color(hex: "6C5FBC"))
        .cornerRadius(8)
        .clipped()
    }
    private func decrease() {
        if value > range.lowerBound {
            value -= step
        }
    }
    private func increase() {
        if value < range.upperBound {
            value += step
        }
    }
}

struct SeasoningView: View {
    let seasoningImage:ImageResource
    let cardColor:String
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color(hex: cardColor))
            .frame(width: 56, height: 60)
            .overlay(
                Image(seasoningImage)
                    .foregroundColor(.white)
                    .font(.system(size: 24))
            )
    }
}

struct FoodDetailView: View {
    
    @State private var count = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .top) {
                HStack (alignment:.top){
                    Image(systemName: "arrowshape.backward")
                        .font(.system(size: 23))
                        .foregroundColor(Color(hex: "6C5FBC"))
                    Spacer()
                    Image(systemName: "heart.fill")
                        .font(.system(size: 23))
                        .foregroundColor(Color(hex: "6C5FBC"))
                }
                .padding()
                .frame(maxWidth: .infinity,minHeight: 200,alignment: .top)
                .background(Color(hex: "DBD9EE"))
                
                Image(.food)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.top,20)
            }
            .frame(maxWidth: .infinity)
            
            VStack(alignment:.leading,spacing: 10){
                HStack{
                    VStack(alignment:.leading){
                        Text("Chicken Hell")
                            .font(.largeTitle)
                        HStack{
                            Text("24min · ")
                            Image(systemName: "star.fill")
                                .foregroundColor(Color(hex: "6C5FBC"))
                            Text("4.8")
                                .foregroundColor(Color(hex: "6C5FBC"))
                            Image(systemName: "flame.fill")
                                .foregroundColor(Color(hex: "F9998A"))
                            Text("356 Kcal")
                                .foregroundColor(.gray)
                        }
                    }
                    Spacer()
                    CustomStepper(value: $count, range: 1...5, step: 1)
                }
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(hex: "F7EDD0"))
                    .frame(width: 72,height: 27)
                    .overlay(
                        Text("Healthy")
                            .foregroundColor(Color(hex: "DAA31A"))
                    )
                
                Text("Description")
                    .font(.headline)
                
                Text("Chicken Hell Is The Healthiest Chicken For Gym Guys And Girls. It Promotes Healthy Lifestyle And Boosts Your Energy.")
                    .foregroundColor(.gray)
                
                Text("Ingredients")
                    .font(.headline)
        
                HStack(spacing: 12) {
                    SeasoningView(
                        seasoningImage: .onion,
                        cardColor: "FF94C7"
                    )
                    SeasoningView(
                        seasoningImage: .carrot,
                        cardColor: "FFA858"
                    )
                    SeasoningView(
                        seasoningImage: .tomato,
                        cardColor: "FE7B7B"
                    )
                    SeasoningView(
                        seasoningImage: .cucumber,
                        cardColor: "79E645"
                    )
                }
                Spacer()
                HStack{
                    Text("$12.99")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                    Button("Add To Cart"){
                        
                    }
                    .font(.system(size: 20))
                    .frame(width: 200,height: 40)
                    .padding()
                    .background(Color(hex: "6C5FBC"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                }
            }.padding(.horizontal,20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    FoodDetailView()
}
