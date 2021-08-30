//
//  Welcome.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("welcome screen")
        loginButton.roundedButton()
        signupButton.roundedButton()
    }
    @IBAction func singupButtonAction(_ sender: Any) {
        let objSignupVC = self.storyboard?.instantiateViewController(identifier: "SignupVC") as? SignupVC
         if let objSignupVC = objSignupVC{ self.navigationController?.pushViewController(objSignupVC, animated: true)
         }
        
    }
    

}
