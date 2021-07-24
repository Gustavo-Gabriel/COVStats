import SwiftUI

struct PreLaunchView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    @State private var showHomeView = false
    
    var body: some View {
        
        Group {
            if showHomeView {
                if isOnboarding {
                    OnBoardingView()
                } else {
                    ContentView()
                }
            } else {
                VStack {
                    
                    Spacer()
                    
                    VStack {
                        Image("lauchScreenIcon")
                            .resizable()
                            .frame(width: 175, height: 175)
                        
                        Text("COVSTATS")
                            .foregroundColor(Colors.pink)
                            .fontWeight(.semibold)
                            .font(.system(size: 28))
                    }
                    
                    
                    Spacer()
                    
                    Text("© Copyright COVSTATS 2021. All rights reserved")
                        .fontWeight(.light)
                        .font(.system(size: 14))
                        .padding(.bottom, 16)
                        .padding(.horizontal, 4)
                }
            }
        }.onAppear {
            withAnimation(.default.delay(2)) {
                showHomeView = true
            }
        }
        
    }
}

struct PreLaunchView_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunchView()
    }
}
