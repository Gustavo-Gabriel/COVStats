import Foundation

extension Int {
    func formatNumberToDecimal(value: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value:value)) ?? "Valor indefinido"
    }
    
    func removeVirgulas(number: String) -> Int? {
        let num = number.replacingOccurrences(of: ",", with: "")
        return Int(num)
    }
}

