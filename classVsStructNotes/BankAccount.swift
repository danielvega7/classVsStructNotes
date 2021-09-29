//
//  BankAccount.swift
//  classVsStructNotes
//
//  Created by DANIEL VEGA on 9/29/21.
//

import Foundation

public class BankAccount{
    var name: String
    var balance: Double
   
    //this is the constructor, in Java you used the same name as class, now we use init
    //global vs local
    init (n: String, balance: Double) {
        name = n
        self.balance = balance
    }
    init () {
        name = "jamal"
        balance = 0
        
    }
    
    func toString() -> String {
        
        return "name: \(name), balance: \(balance)"
    }
    
    func calculateInterest(r: Double) -> Double{
        
        balance += balance * r
        return balance
        
    }
    
    
}
