//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         USING YOUR EXTENSIONS
         In ViewController.swift inside the function body of viewDidLoad():
         Create a String object with the value as your full name called fullName
         Create an Int object with the value 8675309 called phoneNumber
         Print the value of the extension computed properties on fullName and phoneNumber
         Call all of your String and Int functions on your name and print them to the console
         */
        let fullName = "Madina Ibrahim"
        let phoneNumber = 8675309
        print(fullName.whisper())
        print(fullName.shout())
        print(fullName.point())
        print(phoneNumber.half())
        print(phoneNumber.squared)
        print(phoneNumber.isDivisibleBy(2))
        
        /*  In the ViewController.swift:
         You'll see that we've added something called an IBOutlet to the top called unicornLevelLabel. This represents the object we're going to display our text in.
         unicornLevelLabel has a property text set the value of the property to your name object's unicornLevel property
         Run the program and see your unicorn level displayed in the simulator! */
        
        unicornLevelLabel.text = fullName.unicornLevel()
        
    }
}

