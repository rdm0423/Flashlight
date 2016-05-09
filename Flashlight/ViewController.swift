//
//  ViewController.swift
//  Flashlight
//
//  Created by Caleb Hicks on 9/23/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!
    var isOn: Bool = false
    let swipeRecognizer = UISwipeGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(_:)))
        rightSwipe.direction = .Right
        view.addGestureRecognizer(rightSwipe)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
    }
    
    func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.Right :
                
                if self.isOn {
                    self.isOn = false
                    
                    self.lightButton.setTitle("On", forState: .Normal)
                    self.lightButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
                    self.view.backgroundColor = UIColor.blackColor()
                    
                    // Turn device light on
                    let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
                    if (device.hasTorch) {
                        do {
                            try device.lockForConfiguration()
                            if (device.torchMode == AVCaptureTorchMode.On) {
                                device.torchMode = AVCaptureTorchMode.Off
                            } else {
                                try device.setTorchModeOnWithLevel(1.0)
                            }
                            device.unlockForConfiguration()
                        } catch {
                            print(error)
                        }
                    }
                } else {
                    self.isOn = true
                    
                    self.lightButton.setTitle("OFF", forState: .Normal)
                    self.lightButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
                    self.view.backgroundColor = UIColor.whiteColor()
                    
                    // Turn device light OFF
                    let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
                    if (device.hasTorch) {
                        do {
                            try device.lockForConfiguration()
                            if (device.torchMode == AVCaptureTorchMode.Off) {
                                device.torchMode = AVCaptureTorchMode.On
                            } else {
                                try device.setTorchModeOnWithLevel(1.0)
                            }
                            device.unlockForConfiguration()
                        } catch {
                            print(error)
                        }
                    }
                }
                
            case UISwipeGestureRecognizerDirection.Left:
                
                if self.isOn {
                    self.isOn = false
                    
                    self.lightButton.setTitle("On", forState: .Normal)
                    self.lightButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
                    self.view.backgroundColor = UIColor.blackColor()
                    
                    // Turn device light on
                    let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
                    if (device.hasTorch) {
                        do {
                            try device.lockForConfiguration()
                            if (device.torchMode == AVCaptureTorchMode.On) {
                                device.torchMode = AVCaptureTorchMode.Off
                            } else {
                                try device.setTorchModeOnWithLevel(1.0)
                            }
                            device.unlockForConfiguration()
                        } catch {
                            print(error)
                        }
                    }
                } else {
                    self.isOn = true
                    
                    self.lightButton.setTitle("OFF", forState: .Normal)
                    self.lightButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
                    self.view.backgroundColor = UIColor.whiteColor()
                    
                    // Turn device light OFF
                    let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
                    if (device.hasTorch) {
                        do {
                            try device.lockForConfiguration()
                            if (device.torchMode == AVCaptureTorchMode.Off) {
                                device.torchMode = AVCaptureTorchMode.On
                            } else {
                                try device.setTorchModeOnWithLevel(1.0)
                            }
                            device.unlockForConfiguration()
                        } catch {
                            print(error)
                        }
                    }
                }
                
            default:
                break //stops the code/codes nothing.
                
            }
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func lightButtonTapped(sender: AnyObject) {
        
        if isOn {
            self.isOn = false
            
            self.lightButton.setTitle("On", forState: .Normal)
            self.lightButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.blackColor()
            
            // Turn device light ON
            let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
            if (device.hasTorch) {
                do {
                    try device.lockForConfiguration()
                    if (device.torchMode == AVCaptureTorchMode.On) {
                        device.torchMode = AVCaptureTorchMode.Off
                    } else {
                        try device.setTorchModeOnWithLevel(1.0)
                    }
                    device.unlockForConfiguration()
                } catch {
                    print(error)
                }
            }

        } else {
            self.isOn = true
            
            self.lightButton.setTitle("OFF", forState: .Normal)
            self.lightButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
            self.view.backgroundColor = UIColor.whiteColor()
            
            // Turn device light OFF
            let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
            if (device.hasTorch) {
                do {
                    try device.lockForConfiguration()
                    if (device.torchMode == AVCaptureTorchMode.Off) {
                        device.torchMode = AVCaptureTorchMode.On
                    } else {
                        try device.setTorchModeOnWithLevel(1.0)
                    }
                    device.unlockForConfiguration()
                } catch {
                    print(error)
                }
            }
            
            
            
        }
    }
}

