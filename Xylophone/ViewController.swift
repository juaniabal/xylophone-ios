

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(key : sender.currentTitle!)
        sender.alpha = 0.2
        let when = DispatchTime.now() + 2
            DispatchQueue.main.asyncAfter(deadline: when) {
                sender.alpha = 1
            }
        
    }
    
    func playSound(key : String) {
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

