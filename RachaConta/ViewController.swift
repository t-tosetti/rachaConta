//
//  ViewController.swift
//  RachaConta
//
//  Created by Thiago Tosetti Lopes on 17/03/16.
//  Copyright © 2016 Thiago Tosetti Lopes. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var totalPrice: UITextField!
    @IBOutlet weak var cameraButton: UIButton!
   
    @IBAction func shareCount(sender: UIButton) {
        // change String to Double
        let numberOfPeople = Double(people.text!)
        let price = Double(totalPrice.text!)
        
        let result = price! / numberOfPeople!
        
        // only 2 decimals
        let final = (round(100*result)/100)
        
        finalPrice.text = "R$\(final)"
    }
    
    @IBOutlet weak var finalPrice: UILabel!
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerView.adUnitID = "ca-app-pub-3910981515171501/2259847071"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())
    }

}

