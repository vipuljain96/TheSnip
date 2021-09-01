//
//  Utilities.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 01/09/21.
//

import UIKit

class Utilities{
    var key: String?
    func setUserDefaults(for key: String, value: String){
        self.key = key
        let objUD = UserDefaults.init()
        objUD.setValue(value, forKey: key)
        //objUD.setValue("true", forKey: "isLoggedIn")
        
    }
    
    func getUserDefauls(for key: String) -> String? {
        let objUD = UserDefaults.init()
        if let value = objUD.string(forKey: key){
            return value
        }
        return nil
    }
    
    func checkUserLoggedIn() -> Bool {
        if let isLoggedIn = getUserDefauls(for: "isLoggedIn"){
            if isLoggedIn == "true" {
                return true
            }
            else{
                return false
            }
        }
        return false
    }
    func didLoggedOut(){
        let objUD = UserDefaults.init()
        objUD.setValue("false", forKey: "isLoggedIn")
    }
}


