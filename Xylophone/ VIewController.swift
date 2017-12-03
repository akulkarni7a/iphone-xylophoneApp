//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var url: Any?

    @IBAction func notePressed(_ sender: UIButton) {
        if(sender.tag == 1){
            print("play1")
            url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        }
        if(sender.tag == 2){
            print("play2")
            url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
        }
        if(sender.tag == 3){
            print("play3")
            url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
        }
        if(sender.tag == 4){
            print("play4")
            url = Bundle.main.url(forResource: "note4", withExtension: "wav")!
        }
        if(sender.tag == 5){
            print("play5")
            url = Bundle.main.url(forResource: "note5", withExtension: "wav")!
        }
        if(sender.tag == 6){
            print("play6")
            url = Bundle.main.url(forResource: "note6", withExtension: "wav")!
        }
        if(sender.tag == 7){
            print("play7")
            url = Bundle.main.url(forResource: "note7", withExtension: "wav")!
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url as! URL)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        
        
    }
    
  

}

