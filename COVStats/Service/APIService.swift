import Foundation

class APIService {
    
    func getAll(completion: @escaping (All) -> ()) {
        let stringURL: String = API.getAll.path
        
        guard let url = URL(string: stringURL) else { fatalError("URL is Not correct!") }
        
        URLSession.shared.dataTask(with: url) { data , _, _ in
            let all = try! JSONDecoder().decode(All.self, from: data!)
            
            DispatchQueue.main.async {
                completion(all)
            }
        }
        .resume()
    }
}
