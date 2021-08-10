import SwiftUI

struct CountryRowView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Colors.white)
            .border(Colors.neutralGray3.opacity(0.6), width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .frame(height: 80)
    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView()
    }
}
