//
//  ViewController.swift
//  assignment10
//
//  Created by ani kvitsiani on 23.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSwitchLabel()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var numberField1: UITextField!
    @IBOutlet weak var numberField2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!  

    

    @IBAction func switchValueChanged(_ sender: UISwitch) {
        updateSwitchLabel()
    }
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        // Check if the text entered in textFields can be converted to Int
        if let a = Int(numberField1.text ?? ""), let b = Int(numberField2.text ?? "") {
            // Calculate USG or USJ based on the switch state
            let result = switchControl.isOn ? calculateGCD(a, b) : calculateLCM(a, b)
            resultLabel.text = "Result: \(result)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    
    func calculateGCD(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b
        while y != 0 {
            let temp = y
            y = x % y
            x = temp
        }
        return abs(x)
    }

    func calculateLCM(_ a: Int, _ b: Int) -> Int {
        return abs(a * b) / calculateGCD(a, b)
    }

    
   
    
    
    func updateSwitchLabel() {
        let labelText = switchControl.isOn ? "უდიდესი საერთო გამყოფი (GCD)" : "უმცირესი საერთო ჯერადი (LCD)"
        switchLabel.text = labelText
    }
    
    //iphone 15 pro
    //რაღაც ავურიე, ისევ არ მეყო დრო. გადავხედავ და დავასრულებ დედლაინის შემდგომ


    
}





