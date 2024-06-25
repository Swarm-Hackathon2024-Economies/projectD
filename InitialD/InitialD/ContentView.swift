import SwiftUI

struct ContentView: View {
    @State var flag: String? = nil
    
    var body: some View {
        VStack {
            if flag != nil {
                Image(systemName: "flag.checkered.2.crossed")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
            }
            Text(flag ?? "とってみろよ！！！！！！")
            Button(action: {
                self.flag = "フラッグゲットーーーーーー！！！"
            }, label: {
                Text("Button")
            })
            MasaraTownView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
