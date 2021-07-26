//enum Card: Int {
//    case totalCases
//    case recovered
//    case activeCases
//    case totalDeath
//}
//
//extension Card {
//    var card: Info {
//        let all: All = APIService().getAll.(completion: All)a
//        
//        switch self {
//        
//        case .totalCases:
//            return Info(title: "Total Cases",
//                        image: "arrowRed",
//                        value: String(all.cases),
//                        color: .red)
//            
//        case .recovered:
//            return Info(title: "Recovered",
//                        image: "arrowGreen",
//                        value: String(all.recovered),
//                        color: .green)
//            
//        case .activeCases:
//            return Info(title: "Active Cases",
//                                       image: "arrowRed",
//                                       value: String(all.todayCases),
//                                       color: .red)
//        case .totalDeath:
//            return Info(title: "Total Death",
//                                       image: "arrowRed",
//                                       value: String(all.todayDeaths),
//                                       color: .red)
//        }
//    }
//}
