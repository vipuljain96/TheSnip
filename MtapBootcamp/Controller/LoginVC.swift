//
//  Login.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit

class LoginVC: UIViewController {


    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var LoginWithFbButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("login")
        loginButton.roundedButton()
        LoginWithFbButton.roundedButton()
    }
    @IBAction func loginBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        let isUserValid = check(str: (emailTextField?.text)!)
        let isPassValid = check(str: (passwordTextField?.text)!)
        print(isUserValid)
        print(isPassValid)
        if(isPassValid && isUserValid){
           let objGeneralDetailsVC =  self.storyboard?.instantiateViewController(identifier: "GeneralDetailsVC") as? GeneralDetailsVC
            if let objGeneralDetailsVC = objGeneralDetailsVC{ self.navigationController?.pushViewController(objGeneralDetailsVC, animated: true)
            }
        }
    }
    func check(str: String) -> Bool {
            
            var containsCapital = false
            var containsSmall = false
            var containsNumber = false
            var containsSpecialCharacter = false
            
            for character in str {
                if character >= "A" && character <= "Z" {
                    containsCapital = true
                }
                else if character >= "a" && character <= "z" {
                    containsSmall = true
                }
                else if character >= "0" && character <= "9" {
                    containsNumber = true 
                } else {
                    containsSpecialCharacter = true
                }
            }
            
        return containsCapital && containsSmall && containsNumber && containsSpecialCharacter && str.count>=8 && str.count<=16
        }
    
}
