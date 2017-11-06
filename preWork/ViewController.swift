//
//  ViewController.swift
//  NewCalculator
//
//  Created by Nischal Nath Pant on 11/5/17.
//  Copyright © 2017 Nischal Nath Pant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UILabel!
    
    @IBOutlet weak var tipPercentSlider: UISlider!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    @IBOutlet weak var totalAmount: UILabel!
    var pointCount : Int = 0
    

    @IBAction func calculate(sender: UIButton) {
        if sender.tag == 11
        {
            billAmount!.text = ""
            
        }
        else if sender.tag == 13{
            
            pointCount = pointCount + 1
            
            if (pointCount < 2){
            billAmount.text = billAmount.text! + "."
            }
        }
        else if sender.tag == 12{
            //doesn't do anything
        }
        
        else{
            
        billAmount.text = billAmount.text! + String(sender.tag - 1)
        
        }
        
        calculateTotal()
      
        }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
           }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func display(sender: UISlider) {
        
        let sliderValue = Int(sender.value)
        tipPercentLabel.text = String(sliderValue)
        
        calculateTotal()
    
        
    }
    func calculateTotal (){
        
        var totalPay = Float(billAmount.text!)
        
        let tipPercent = Float (tipPercentLabel.text!)! / 100
        
        if totalPay == nil
        {
            totalPay = 0
        }
        totalPay = totalPay! * (1 + tipPercent)
        
        totalAmount.text = "$" + String (totalPay!)
    }
    



    
}

