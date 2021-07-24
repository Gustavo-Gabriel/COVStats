import SwiftUI

struct HomeView: View {
    var body: some View {
        
        NavigationView {
            Text("Chegou")
            
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
