//
//  ViewController.swift
//  reverseWord
//
//  Created by Ramon Geronimo on 10/15/16.
//  Copyright © 2016 Ramon Geronimo. All rights reserved.
//

import UIKit

var wordToReverse = ""

class ViewController: UIViewController {

    @IBOutlet weak var txtEnterText: UITextField!
    
    @IBOutlet weak var lblLabel: UILabel!
    
    @IBAction func btnReverseACTION(_ sender: UIButton) {
        wordToReverse = txtEnterText.text!
        
        reverseTheWord()
    }
    
    func reverseTheWord() {
        var tempReverseWord = String(wordToReverse.characters.reversed())
        
        tempReverseWord = tempReverseWord.uppercased()
        
        lblLabel.text = tempReverseWord
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtEnterText.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

