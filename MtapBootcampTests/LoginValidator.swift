//
//  LoginValidator.swift
//  MtapBootcampTests
//
//  Created by Vipul Jain on 23/08/21.
//

import XCTest
@testable import MtapBootcamp

class LoginValidator: XCTestCase {
    
    var objLogin:Login?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objLogin = Login()
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objLogin = nil
    }
    
    func testUsername(){
        var userval = objLogin?.check(str: "Vipuljain@12")
        XCTAssertEqual(userval , true)
        
        userval = objLogin?.check(str: "Vipuljain")
        XCTAssertEqual(userval , false)
        
        
    }
    func testUserPass(){
        let userval = objLogin?.check(str: "Vipuljain@12")
        XCTAssertEqual(userval , true)
        
    }
    
}
