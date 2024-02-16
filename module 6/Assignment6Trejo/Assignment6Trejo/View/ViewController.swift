//
//  ViewController.swift
//  Assignment6Trejo
//
//  Created by Christopher Joseph on 2/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var USDinput: UITextField!
    
    var amount1 = ""
    var amount2 = ""
    var amount3 = ""
    var amount4 = ""
    
    // conversion rates sourced from https://www.x-rates.com/table/?from=USD&amount=1
    // as of Fri Feb 16 2024 09:48
    
    var conversionLogic = ConversionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func euroSwitch(_ sender: UISwitch) {
        conversionLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func poundSwitch(_ sender: UISwitch) {
        conversionLogic.setPoundSwitch(sender.isOn)
    }
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        conversionLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func francSwitch(_ sender: UISwitch) {
        conversionLogic.setFrancSwitch(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        
        guard let text = USDinput.text else {
            return
        }
        
        headerLabel.text = "CurrencyConverter"
        headerLabel.textColor = UIColor.black
        headerLabel.font = UIFont.systemFont(ofSize: 20)
        let nonDigits = CharacterSet.decimalDigits.inverted
        if ((text.rangeOfCharacter(from: nonDigits) != nil) || text == "") {
                headerLabel.text = "ENTER ONLY AN INTEGER! DO NOT LEAVE EMPTY! NO LETTERS! NO SPECIAL CHARACTERS! NO FLOAT VALUES!!!!!!!!!!! thanks :)"
                headerLabel.textColor = UIColor.red
                headerLabel.font = UIFont.boldSystemFont(ofSize: 25)
                return
        }
        
        guard let integerText = Int(text) else {
            return
        }
        
        
        
        if conversionLogic.euroSwitchBool {
            amount1 = conversionLogic.euroConversion(integerText)
        } else {
            amount1 = ""
        }
        if conversionLogic.poundSwitchBool {
            amount2 = conversionLogic.poundConversion(integerText)
        } else {
            amount2 = ""
        }
        if conversionLogic.yenSwitchBool {
            amount3 = conversionLogic.yenConversion(integerText)
        } else {
            amount3 = ""
        }
        if conversionLogic.francSwitchBool {
            amount4 = conversionLogic.francConversion(integerText)
        } else {
            amount4 = ""
        }
            
        self.performSegue(withIdentifier: "toConversionViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConversionViewController" {
            let convertNavigation = segue.destination as! ConversionViewController
            
            if conversionLogic.euroSwitchBool == false {
                convertNavigation.amount1 = ""
                convertNavigation.label1 = ""
            } else {
                convertNavigation.amount1 = amount1
                convertNavigation.label1 = "Euros:"
            }
            if conversionLogic.poundSwitchBool == false {
                convertNavigation.amount2 = ""
                convertNavigation.label2 = ""
            } else {
                convertNavigation.amount2 = amount2
                convertNavigation.label2 = "Pounds:"
            }
            if conversionLogic.yenSwitchBool == false {
                convertNavigation.amount3 = ""
                convertNavigation.label3 = ""
            } else {
                convertNavigation.amount3 = amount3
                convertNavigation.label3 = "Yen:"
            }
            if conversionLogic.francSwitchBool == false {
                convertNavigation.amount4 = ""
                convertNavigation.label4 = ""
            } else {
                convertNavigation.amount4 = amount4
                convertNavigation.label4 = "Francs:"
            }
        }
    }
    
    
}

