import SwiftUI

struct ChartCircleView: View {
    
    var percentil: Double
    
    var body: some View {
        Circle()
            .trim(from: 0.0, to: CGFloat(100 - percentil)/100)
            .stroke(lineWidth: 10)
            .foregroundColor(Colors.pink)
            .rotationEffect(Angle(degrees: 180))
            .frame(width: 155, height: 155)
            .overlay(
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(percentil)/100)
                    .stroke(lineWidth: 10)
                    .foregroundColor(Colors.pinkLight)
                    .rotationEffect(Angle(degrees: 180))
                    .frame(width: 128, height: 128)
                    
                    .overlay(
                        Circle()
                            .trim(from: 0.0, to: 1.0)
                            .stroke(lineWidth: 10)
                            .foregroundColor(Colors.neutralGray4)
                            .rotationEffect(Angle(degrees: 120.0))
                            .frame(width: 99, height: 99)
                            .overlay(
                                Text(Double().formatNumberToDecimal(value: percentil))
                                    .foregroundColor(Colors.black)
                                    .font(.system(size: 22))
                                    .fontWeight(.semibold)
                            )
                    )
            )
    }
}
