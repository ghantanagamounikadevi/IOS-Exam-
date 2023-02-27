//
//  ViewController.swift
//  Ghanta_CalculatorApp
//
//  Created by Ghanta,Naga Mounika Devi on 2/15/23.
//

import UIKit

class ViewController: UIViewController {
    var first = ""
    var second = ""
    var calcOperator = " "
    var result:Double = 0.0
    var enteredValue = ""
    
    //UI for displaylable
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    

    @IBAction func buttonAC(_ sender: UIButton) {
        
        calcOperator = ""
        first = ""
        second = ""
        enteredValue = ""
        result = 0.0
        resultOutlet.text! = "0"
    }
    @IBAction func buttonC(_ sender: UIButton) {
        if(!enteredValue.isEmpty)
        {
            enteredValue.removeLast()
            resultOutlet.text! = enteredValue
        }
        
    }
    @IBAction func buttonPlusOrMinus(_ sender: UIButton) {
        if calcOperator == "-"
        {
            calcOperator = "+"
        }
        else if calcOperator == "+"
        {
            calcOperator = "-"
        }
        
    }

    @IBAction func buttonPlus(_ sender: UIButton) {
        calcOperator = "+"
        first = enteredValue
        enteredValue = ""
        
    }

    @IBAction func buttonSeven(_ sender: UIButton) {
        
        resultOutlet.text! = ""
        enteredValue += "7"
        resultOutlet.text! += enteredValue
        
    }

    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "8"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "9"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonMinus(_ sender: UIButton) {
        calcOperator = "-"
        first = enteredValue
        enteredValue = ""
    }

    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "4"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "5"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "6"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonMultiply(_ sender: UIButton) {
        calcOperator = "*"
        first = enteredValue
        enteredValue = ""
    }

    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "1"
        resultOutlet.text! += enteredValue
    }

    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "2"
        resultOutlet.text! += enteredValue
    }
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "3"
        resultOutlet.text! += enteredValue
    }

    
    @IBAction func buttonDevide(_ sender: UIButton) {
        calcOperator = "/"
        first = enteredValue
        enteredValue = ""
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text! = ""
        enteredValue += "0"
        resultOutlet.text! = enteredValue
    }
    @IBAction func buttonDecimal(_ sender: UIButton) {
        
    
       resultOutlet.text! = ""
        enteredValue += "."
        resultOutlet.text! += enteredValue
       
    }
    
    @IBAction func buttonModule(_ sender: UIButton) {
        
       calcOperator = "%"
       first = enteredValue
        enteredValue = ""
    }
    @IBAction func buttonEqual(_ sender: UIButton) {
        resultOutlet.text! = "="
        second = enteredValue
        var firstInput:Double = 0.0
        var secondInput:Double = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if(calcOperator == "+")
        {
            resultOutlet.text! = String(Int(firstInput + secondInput))
  
        }
        else if(calcOperator == "-")
        {
            resultOutlet.text! = String(Int(firstInput - secondInput))
          
        }
        else if(calcOperator == "*")
        {
            resultOutlet.text! = String(Int(firstInput) * Int(secondInput))
          
        }
        else if(calcOperator == "/")
        {
            if(secondInput == 0){
                resultOutlet.text! = "Not a number"
            }
            else{
                var value:Double = firstInput / secondInput
                resultOutlet.text!  = String(format: " %.5f", value)            }
            
       }
        else
        {
            //resultOutlet.text! = String(round(firstInput.truncatingRemainder(dividingBy:secondInput)) * 100000 / 100000.0)
            var valu2:Double = firstInput.truncatingRemainder(dividingBy:secondInput)
            resultOutlet.text!  = String(format: " %.1f", valu2) 
            
        }
        
    }


    
}

