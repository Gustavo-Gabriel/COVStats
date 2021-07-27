import SwiftUI

struct CardRecoveryView: View {
    
    var all: All
    var percentil: Double
    
    var body: some View {
        Rectangle()
            .foregroundColor(Colors.white)
            .border(Colors.neutralGray3.opacity(0.6), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(height: 330)
            .overlay(
                VStack {
                    HStack {
                        Text("Ratio of Recovery")
                            .font(.system(size: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(Colors.black)
                        
                        Spacer()
                        
                        Text("View Details")
                            .font(.system(size: 11))
                            .fontWeight(.regular)
                            .foregroundColor(Colors.black)
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                    ChartCircleView(percentil: percentil)
                        .padding(.top, 42)
                    
                    HStack {
                        
                        Spacer()
                        
                        InfoStack(title: "Affected", value: Int().formatNumberToDecimal(value: all.cases))
                        
                        Spacer()
                        
                        InfoStack(title: "Recovered", value: Int().formatNumberToDecimal(value: all.recovered))
                        
                        Spacer()
                    }
                    .padding(.top, 16)
                    
                    Spacer()
                }
            )
    }
}
