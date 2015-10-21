//
//  ViewController.swift
//  modeling_test_6
//
//  Created by 木下　和巳 on 10/18/15.
//  Copyright © 2015 test. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    
    var audioPlayer: AVAudioPlayer = try! AVAudioPlayer(contentsOfURL: NSBundle.mainBundle().URLForResource("select04", withExtension: "mp3")!)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        super.viewDidLoad()
        
        //audio volumesetting
        audioPlayer.volume = 0.0
        
        //add button instance and setting and add view
        let myButton = UIButton()
        myButton.frame = CGRectMake(0,0,200,160)
        myButton.backgroundColor = UIColor.redColor()
        myButton.layer.masksToBounds = true
        myButton.setTitle("拍手", forState: UIControlState.Normal)
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        myButton.setTitle("拍手", forState: UIControlState.Highlighted)
        myButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        myButton.setImage(UIImage(named: "switch.png"),forState: UIControlState.Normal)
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:350)
        myButton.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        self.view.addSubview(myButton)
        
        //UI slider instance,setting and add view
        let sld = UISlider(frame: CGRectMake(self.view.frame.width/5,600,250,40))
        sld.minimumValue = 0.0
        sld.maximumValue = 12.0
        sld.layer.masksToBounds = true
        sld.addTarget(self, action: "sliderChanged:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(sld)
        
        
        
    }
    
    internal func onClickMyButton(sender: UIButton){
        audioPlayer.play()
    }
    
    internal func sliderChanged(sender: UISlider){
        audioPlayer.volume = sender.value
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

