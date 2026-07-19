//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    
    var timer = Timer()

    @IBAction func hardnessSelected(_ sender: UIButton) {

        timer.invalidate()
        progressBar.progress = 0.0
        secondsPassed = 0
        let hardness = sender.currentTitle!
        titleLabel.text = hardness
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
        
        //        if hardness
        //            == "Soft"{
        //            print(softTime)
        //        }else if hardness == "Medium"{
        //            print(mediumTime)
        //        }else{
        //            print(hardTime)
        //        }
        
        //        switch hardness{
        //        case "Soft": print(5)
        //        case "Medium": print(7)
        //        case "Hard": print(12)
        //        default : print("Error")
        //        }
        
        
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            print("\(secondsPassed) seconds")
            secondsPassed += 1
            print(Float(secondsPassed)/Float(totalTime))
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
            
        }else {
            timer.invalidate()
            titleLabel.text = "Done!"
            progressBar.progress = 1.0
            playSound(soundName: "alarm_sound")
        }
    }
    

    
    func playSound(soundName: String) {
        // 試す拡張子の候補
        let possibleExtensions = ["wav", "mp3", "caf", "m4a"]

        var found = false

        for ext in possibleExtensions {
            if let url = Bundle.main.url(forResource: soundName, withExtension: ext) {
                do {
                    player = try AVAudioPlayer(contentsOf: url)
                    player.play()
                    print("✅ 再生開始: \(soundName).\(ext)")
                    found = true
                    break
                } catch {
                    print("⚠️ 再生エラー: \(error.localizedDescription)")
                }
            }
        }

        if !found {
            print("❌ 音声ファイルが見つかりません: \(soundName)（拡張子不明）")
        }
    }


}
