import Foundation

extension Double {
    func formatNumberToDecimal(value: Double) -> String {
        let numberFormatter = NumberFormatter()
        
        numberFormatter.maximumFractionDigits = 1
        
        numberFormatter.numberStyle = .decimal
        
        return numberFormatter.string(from: NSNumber(value:value)) ?? "Valor indefinido"
    }
}
