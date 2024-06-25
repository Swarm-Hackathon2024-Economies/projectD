import SwiftUI

struct MasaraTownView: View {
    @State var partner: String = ""
    
    var zenigameURL = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/7.png")
    var hushigidaneURL = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/1.png")
    var hitokageURL = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/4.png")
    
    var body: some View {
        Text("どっちにする？")
        
        Button(action: {
            partner = "hushigidane"
        }, label: {
            AsyncImage(url: hushigidaneURL)
            Text("フシギダネ")
        })
        Button(action: {
            partner = "hitokage"
        }, label: {
            AsyncImage(url: hitokageURL)
            Text("ヒトカゲ")
        })
        Button(action: {
            partner = "zenigame"
        }, label: {
            AsyncImage(url: zenigameURL)
            Text("ゼニガメ")
        })
    }
}

#Preview {
    ContentView()
}
