//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Melissa Alvarez on 2/23/15.
//  Copyright (c) 2015 MelissaAlvarez. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var receivedAudio:RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
//            var filePathUrl = NSURL.fileURLWithPath(filePath)
//        }else {
//            println("The filepath is empty")
//        }
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUpAudioPlayer(rate:Float) {
        audioPlayer.stop()
        audioPlayer.rate = rate
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    @IBAction func playSlow(sender: UIButton) {
        setUpAudioPlayer(0.5)
    }

    @IBAction func playFast(sender: UIButton) {
        setUpAudioPlayer(2.0)
    }

    @IBAction func stopPlayback(sender: UIButton) {
        audioPlayer.stop()
    }

}
