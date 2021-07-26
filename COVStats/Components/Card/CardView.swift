import SwiftUI
import Charts

struct CardView: View {
    
    let info: Info
    
    var body: some View {
        Rectangle()
            .foregroundColor(Colors.white)
            .border(Colors.neutralGray3.opacity(0.6), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(height: 207)
            .overlay(
                VStack {
                    HStack {
                        Text(info.title)
                            .foregroundColor(Colors.neutralGray3)
                            .font(.system(size: 17))
                            .fontWeight(.regular)
                        
                        Spacer()
                        
                        Image(info.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 28, height: 28)
                    }
                    .padding(.top, 25)
                    .padding(.horizontal, 10.5)
                    
                    HStack {
                        Text(info.value)
                            .foregroundColor(Colors.black)
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.leading, 10.5)
                    
                    Chart(data: Info.data())
                        .chartStyle(
                            LineChartStyle(.quadCurve, lineColor: info.color, lineWidth: 2)
                        )
                        .frame(height: 50)
                        .padding(.horizontal, 10.5)

                    Spacer()
                }
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(info: infoData[0])
    }
}
