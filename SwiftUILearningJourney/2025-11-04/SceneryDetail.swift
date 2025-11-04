import SwiftUI


struct FacilityView: View {
    var icon: String
    var desc: String
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hex:"D0E7FF"))
            .frame(width: .infinity,height: 77)
            .overlay(
                VStack{
                    Image(systemName: icon)
                    Text(desc)
                }.foregroundColor(.gray)
            )
    }
}


struct SceneryDetail: View {
    
    var body: some View {
        VStack(alignment:.leading){
            ZStack(alignment: .bottomTrailing){
                Image(.scenery)
                    .resizable()
                    .frame(width: .infinity)
                    .cornerRadius(20)
                Circle()
                    .fill(.white)
                    .frame(width: 50,height: 50)
                    .shadow(
                            color: .blue.opacity(0.2),
                            radius: 10,
                            x: 0,
                            y: 0
                        )
                    .overlay(
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    ).offset(x: -20, y: 20)
            }
            .padding(.bottom, 25)
            HStack(){
                Text("Coeurdes Alpes")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Text("Show map")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
            }
            HStack{
                Image(systemName: "star.fill")
                    .foregroundColor(.orange)
                Text("4.5(355 Reviews)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }.padding(.vertical,5)
            Text("Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....")
            HStack{
                Text("Read more")
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Image(systemName: "chevron.down")
                    .foregroundColor(.blue)
            }.padding(.vertical,10)
            Text("Facilities")
                .fontWeight(.bold)
            HStack(spacing: 18){
                FacilityView(icon: "wifi", desc: "1 Heater")
                FacilityView(icon: "fork.knife", desc: "1 Dinner")
                FacilityView(icon: "bathtub", desc: "1 Tubs")
                FacilityView(icon: "figure.pool.swim", desc: "pool")
            }
            HStack{
                VStack(alignment:.leading){
                    Text("Price")
                        .fontWeight(.bold)
                        .font(.caption)
                    Text("$199")
                        .foregroundColor(.green)
                        .font(.title)
                        .fontWeight(.bold)
                }
                Spacer()
                Button(
                    action: {
                        
                    },
                    label: {
                        HStack{
                            Text("Book Now")
                            Image(systemName: "chevron.right")
                        }
                    }
                )
                .frame(width: 180)
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(10)
            }.padding(.vertical,10)
        }.padding(.horizontal,20)
    }
}

#Preview {
    SceneryDetail()
}
