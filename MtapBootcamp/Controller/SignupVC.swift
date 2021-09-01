//
//  signup.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit
import IQKeyboardManagerSwift

class SignupVC: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var signupEmail: UITextField!
    @IBOutlet weak var signupPass: UITextField!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var createYourAccountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("signup")
        
        IQKeyboardManager.shared.enable = true
        createYourAccountButton.roundedButton()
    }
    @IBAction func signupBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func createYourAccountButton(_ sender: Any) {
        let isEmailValid = check(str: (signupEmail?.text)!)
        let isPasswordValid = check(str: (signupPass?.text)!)
        let isValidFirstName = checkname(str: (firstName?.text)!)
        let isValidlastName = checkname(str: (lastName?.text)!)
        print(isValidlastName)
        print(isValidFirstName)
        if(isPasswordValid && isEmailValid && isValidlastName && isValidFirstName){
            print("button pressed")
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
    func checkname(str: String) ->Bool{
        var onlyAlpha = true
        for character in str {
            if ((character >= "A" && character <= "Z") || (character >= "a" && character <= "z")) {
            continue
            }
            else{
            onlyAlpha = false;
            }
        }
        return onlyAlpha && str.count>3
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
