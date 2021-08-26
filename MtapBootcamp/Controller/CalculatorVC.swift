//
//  insideapp.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit

class CalculatorVC: UIViewController {
    
    @IBOutlet weak var label: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var secondNumber = ""
    var value2 = 0
    var value1 = 0
    var isDivide = false
    var isAdd = false
    var isSubtract = false
    var isMultiply = false
    @IBAction func CalcButtonAction(_ sender: Any) {
        
        let buttonAction = sender as? UIButton
        let buttonTag = buttonAction?.tag
        
        
        switch buttonTag {
        case 1:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply) {
                label.text = label.text! + String(1)
                value1 = Int((label.text)!)!
                print(value1)
            }
            else{
                label.text = label.text! + String(1)
                secondNumber = secondNumber + String(1)
            }
        case 2:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)   {
                label.text = label.text! + String(2)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(2)
                secondNumber = secondNumber + String(2)
                print(secondNumber)
            }
        case 3:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)  {
                label.text = label.text! + String(3)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(3)
                secondNumber = secondNumber + String(3)
            }
        case 4:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)  {
                label.text = label.text! + String(4)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(4)
                secondNumber = secondNumber + String(4)
            }
        case 5:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply) {
                label.text = label.text! + String(5)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(5)
                secondNumber = secondNumber + String(5)
            }
        case 6:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)  {
                label.text = label.text! + String(6)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(6)
                secondNumber = secondNumber + String(6)
            }
        case 7:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)  {
                label.text = label.text! + String(7)
                value1 = Int(label.text!) ?? 0
            }
            else{label.text = label.text! + String(7)
                secondNumber = secondNumber + String(7)
            }
        case 8:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply) {
                label.text = label.text! + String(8)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(8)
                secondNumber = secondNumber + String(8)
            }
        case 9:
            if (!isDivide && !isAdd && !isSubtract && !isMultiply)  {
                label.text = label.text! + String(9)
                value1 = Int(label.text!) ?? 0
            }
            else{
                label.text = label.text! + String(9)
                secondNumber = secondNumber + String(9)
            }
        case 10:
            label.text = ""
            value1 = 0
            value2 = 0
            secondNumber = ""
            isAdd = false
            isDivide = false
            isMultiply = false
            isSubtract = false
        case 11:
            label.text = label.text! + String(9)
        case 12:
            label.text = String((label.text!).dropLast())
        case 13:
            label.text = label.text! + "/"
            isDivide = true
        case 14:
            label.text = label.text! + "x"
            isMultiply = true
        case 15:
            label.text = label.text! + "-"
            isSubtract = true
        case 16:
            label.text = label.text! + "+"
            isAdd = true
            print(isAdd)
        case 17:
            value2 = Int(secondNumber) ?? 0
            if isAdd{
                label.text = String(value1 + value2)
                value1 = Int(label.text!) ?? 0
                isAdd = false
                value2 = 0
                secondNumber = ""
            }
            if isSubtract{
                label.text = String(value1 - value2)
                value1 = Int(label.text!) ?? 0
                isSubtract = false
                value2 = 0
                secondNumber = ""
                
            }
            if isMultiply{
                label.text = String(value1 * value2)
                value1 = Int(label.text!) ?? 0
                isMultiply = false
                value2 = 0
                secondNumber = ""
            }
            if isDivide{
                label.text = String(value1 / value2)
                value1 = Int(label.text!) ?? 0
                isDivide = false
                value2 = 0
                secondNumber = ""
            }
        case 18:
            label.text = label.text! + "."
        case 19:
            label.text = label.text! + "0"
        case 20:
            label.text = label.text! + "00"
            
        default:
            label.text = ""
        }
        
    }
    
    
}
