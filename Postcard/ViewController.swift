//
//  ViewController.swift
//  Postcard
//
//  Created by Sebastian Glöckner on 05.10.14.
//  Copyright (c) 2014 Netbat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var enternametextfield: UITextField!
    @IBOutlet weak var entermessagetextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var l_name_label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        
        messagelabel.hidden = false //erstmal: zeigen
        messagelabel.text = entermessagetextfield.text //Text nach oben
        entermessagetextfield.text = "" //Text unten löschen
        messagelabel.textColor = UIColor.redColor() //farbe oben auf rot
        
        l_name_label.hidden = false // zeigen
        l_name_label.text = enternametextfield.text // Text nach oben
        l_name_label.textColor = UIColor.blueColor() // Text blau
        enternametextfield.text = "" //unten löschen
        
        entermessagetextfield.resignFirstResponder() //macht am Ebde die Tastatur weg
        enternametextfield.resignFirstResponder() // auch hier die Tastatur weg, falls der Mauszeiger da ist
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal) //Button selbst verändern
    }

}

