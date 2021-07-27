import SwiftUI
import Foundation
import Combine

final class HomeViewModel: ObservableObject {
    
    init() {
        fetchAll()
    }
    
    @Published var all: All = API.getAll.allError
    @Published var cardsInfo: [Info] = []
    @Published var percentil: Double = 0.0
    
    private func fetchAll() {
        APIService().getAll {
            self.all = $0
                        
            self.cardsInfo = [
                Info(title: "Total Cases", image: "arrowRed", value: Int().formatNumberToDecimal(value: $0.cases), color: .red),
                Info(title: "Recovered", image: "arrowGreen", value: Int().formatNumberToDecimal(value: $0.recovered), color: .green),
                Info(title: "Active Cases", image: "arrowRed", value: Int().formatNumberToDecimal(value: $0.active), color: .red),
                Info(title: "Total Death", image: "arrowRed", value: Int().formatNumberToDecimal(value: $0.deaths), color: .red)
            ]
            
            self.percentil = Double($0.recovered)/Double($0.cases) * 100
        }
    }
}
