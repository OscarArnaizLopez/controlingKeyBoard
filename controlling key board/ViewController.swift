//
//  ViewController.swift
//  controlling key board
//
//  Created by Oscar Arnaiz on 19/07/2016.
//  Copyright © 2016 Oscar Arnaiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textTxf: UITextField!
    
    @IBOutlet weak var textLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textTxf.delegate = self
    }

   
    @IBAction func setTextTap(sender: AnyObject) {
        textLbl.text = textTxf.text
    }
    
    // Tap outside of the keyboard brings the keyboard down
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

}

