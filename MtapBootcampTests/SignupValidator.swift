//
//  SignupValidator.swift
//  MtapBootcampTests
//
//  Created by Vipul Jain on 24/08/21.
//

import XCTest
@testable import MtapBootcamp

class SignupValidator: XCTestCase {

    var objSignup : signup?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objSignup = signup()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objSignup = nil
    }

    func testUsername(){
        var userval = objSignup?.check(str: "Vipuljain@12")
        XCTAssertEqual(userval , true)
        
        userval = objSignup?.check(str: "Vipuljain")
        XCTAssertEqual(userval , false)
        
        
    }
    func testUserPass(){
        let userval = objSignup?.check(str: "Vipuljain@12")
        XCTAssertEqual(userval , true)
        
    }
    func testFirstName(){
        var userFirstName = objSignup?.checkname(str: "Vipul")
        XCTAssertEqual(userFirstName,true)
         userFirstName = objSignup?.checkname(str: "Vipul@1")
        XCTAssertEqual(userFirstName,false)
        userFirstName = objSignup?.checkname(str: "V")
       XCTAssertEqual(userFirstName,false)

    }
    func testlastName(){
        var userlastName = objSignup?.checkname(str: "Vipul")
        XCTAssertEqual(userlastName,true)
         userlastName = objSignup?.checkname(str: "Vipul@1")
        XCTAssertEqual(userlastName,false)
        

    }
    
    
}
