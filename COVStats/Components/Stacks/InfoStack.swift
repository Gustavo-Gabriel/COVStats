import SwiftUI

struct InfoStack: View {
    
    let title: String
    let value: String
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(Colors.pink)
                
                Text(value)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(Colors.black)
            }
            
            Text(title)
                .font(.system(size: 11))
                .fontWeight(.medium)
                .foregroundColor(Colors.neutralGray3)
        }
    }
}

struct InfoStack_Previews: PreviewProvider {
    static var previews: some View {
        InfoStack(title: "Affected", value: "368,226")
    }
}
