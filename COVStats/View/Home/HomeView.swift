import SwiftUI
import QGrid

struct HomeView: View {
    
    @ObservedObject var viewModel = HomeViewModel()
    @State private var isLoading = false
    
    var body: some View {
        NavigationView {
            
            ZStack {
                ScrollView {
                    VStack {
                        QGrid(viewModel.cardsInfo, columns: 2, hPadding: 16, isScrollable: false) { info in
                            
                            CardView(info: info)
                        }
                        .padding(.bottom, 440)
                        
                        CardRecoveryView(all: viewModel.all, percentil: viewModel.percentil)
                            .padding(.horizontal, 16)
                            
                            .navigationBarTitle("COVID-19", displayMode: .inline)
                            .navigationBarItems(
                                trailing: Button(action: {}) {
                                    Image(systemName: "person.fill.checkmark")
                                        .foregroundColor(Colors.neutralGray3)
                                }
                            )
                    }
                }
                
                if isLoading { LoadingView() }
                
            }.onAppear { loading() }
        }
    }
    
    func loading() {
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
