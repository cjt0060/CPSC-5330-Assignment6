//
//  ConversionViewController.swift
//  Assignment6Trejo
//
//  Created by Christopher Joseph on 2/16/24.
//

import UIKit

class ConversionViewController: UIViewController {

    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var franclabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var poundLabel: UILabel!
    
    @IBOutlet weak var franc: UILabel!
    @IBOutlet weak var yen: UILabel!
    @IBOutlet weak var pounds: UILabel!
    @IBOutlet weak var euros: UILabel!
    
    
    
    var amount1 : String = ""
    var amount2 : String = ""
    var amount3 : String = ""
    var amount4 : String = ""
    
    var label1 = ""
    var label2 = ""
    var label3 = ""
    var label4 = ""
    
    var conversionLogic = ConversionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        euroLabel.text = amount1
        poundLabel.text = amount2
        yenLabel.text = amount3
        franclabel.text = amount4
        
        euros.text = label1
        pounds.text = label2
        yen.text = label3
        franc.text = label4
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
