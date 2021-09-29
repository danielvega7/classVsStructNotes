//
//  ViewController.swift
//  classVsStructNotes
//
//  Created by DANIEL VEGA on 9/29/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var balanceTextField: UITextField!
    @IBOutlet weak var textViewOutlet: UITextView!
    var bankAccountUsers: Array<BankAccount> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func addAction(_ sender: UIButton) {
        
        var blah = nameTextField.text!
        var dinero = balanceTextField.text!
        
        var client = BankAccount.init(n: blah, balance: Double(dinero)!)
        
        textViewOutlet.text += "\(client.toString()) \n"
        bankAccountUsers.append(client)
        print(bankAccountUsers)
    }
    
    @IBAction func findInterest(_ sender: UIButton) {
        for jamal in bankAccountUsers {
            textViewOutlet.text = ""
            textViewOutlet.text += "\(jamal.calculateInterest(r: 0.025))"
            
        }
    }
    
    
}

