//
//  AccountVC.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 01/09/21.
//

import UIKit

class AccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func logoutButton(_ sender: Any) {
        Utilities().setUserDefaults(for: "isLoggedIn", value: "false")
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let welcomecontroller = storyBoard.instantiateViewController(identifier: "WelcomeVC") as? WelcomeVC
        if let welcomecontroller = welcomecontroller{
            let navigationController = UINavigationController(rootViewController: welcomecontroller)
            self.view.window?.rootViewController = navigationController
        }
        
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
