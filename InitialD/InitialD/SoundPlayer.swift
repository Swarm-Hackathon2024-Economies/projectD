import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    
    var nakigoe: String
    var music_data: Data
    
    init(
        nakigoe: String = "nakigoe_zenigame",
        music_data: Data = NSDataAsset(name: "nakigoe_zenigame")!.data
    ) {
        self.nakigoe = nakigoe
        self.music_data = music_data
    }
    
    var music_player:AVAudioPlayer!
    
    // 音楽を再生
    func musicPlayer(){

        do{
            music_player=try AVAudioPlayer(data:music_data)   // 音楽を指定
            music_player.play()   // 音楽再生
        }catch{
            print("エラー発生.音を流せません")
        }

    }

    // 音楽を停止
    func stopAllMusic (){
        music_player?.stop()
    }
}

