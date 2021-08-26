//
//  Login.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit

class Login: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("login")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let isUserValid = check(str: (emailTextField?.text)!)
        let isPassValid = check(str: (passwordTextField?.text)!)
        print(isUserValid)
        print(isPassValid)
        if(isPassValid && isUserValid){
            
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
