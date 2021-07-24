import SwiftUI

struct PageView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    let symptom: Symptom
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: { isOnboarding = false }, label: {
                    Text("Skip")
                        .font(.system(size: 14))
                        .foregroundColor(Colors.black)
                        .fontWeight(.medium)
                        .padding(.trailing, 25)
                        .padding(.top, 16)
                })
            }
            
            Spacer()
            
            Image(symptom.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 260)
            
            Text(symptom.name)
                .font(.system(size: 28))
                .fontWeight(.semibold)
                .padding(.horizontal, 25)
            
            Text(symptom.text)
                .fontWeight(.light)
                .padding(.horizontal, 25)
                .padding(.top, 16)
                .foregroundColor(Colors.neutralGray3)
                .multilineTextAlignment(.center)
            
            Spacer()
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(symptom: symptomData[0])
    }
}
