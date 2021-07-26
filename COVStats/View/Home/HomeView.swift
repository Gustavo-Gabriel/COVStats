import SwiftUI
import QGrid

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            QGrid(viewModel.cardsInfo, columns: 2, hPadding: 16) { info in
                CardView(info: info)
            }
            
            .navigationBarTitle("COVID-19", displayMode: .inline)
            .navigationBarItems(
                trailing: Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "person.fill.checkmark")
                        .foregroundColor(Colors.neutralGray3)
                })
            )
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
