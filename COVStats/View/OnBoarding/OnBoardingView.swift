import SwiftUI

struct OnBoardingView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Colors.pink)
        UIPageControl.appearance().pageIndicatorTintColor = UIColor(Colors.neutralGray4)
    }
    
    let symptoms: [Symptom] = symptomData
    
    var body: some View {
        TabView() {
            ForEach(symptoms) { symptom in
                PageView(symptom: symptom)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
