import Foundation
import SwiftUI

struct Info: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var value: String
    var color: Color = Color.init(.green)
    
    static func data() -> [Float] {
        var numbers :[Float] = []
        
        for _ in 0..<10 {
            let randomFloat = Float.random(in: 0..<1)
            numbers.append(randomFloat)
        }
        
        return numbers
    }
}
