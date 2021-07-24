import Foundation

struct Symptom: Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var text: String
}
