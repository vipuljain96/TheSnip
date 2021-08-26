//
//  MtapBootcampTests.swift
//  MtapBootcampTests
//
//  Created by Vipul Jain on 20/08/21.
//

import XCTest
@testable import MtapBootcamp

class MtapBootcampTests: XCTestCase {

    var objStack:Stacktdd?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objStack = Stacktdd();
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testpush(){
        objStack?.push(n:2)
        let topvalue = objStack?.top()
        XCTAssertEqual(topvalue , 2)
    }
    func testpop(){
        let topvalue = objStack?.top()
        let popelement = objStack?.pop()
        
        XCTAssertEqual(popelement, topvalue)
    }
    
    func testtop(){
       let value = objStack?.top()
        XCTAssertEqual(value,nil)
    }
    func testpopnil(){
        
        let value = objStack?.pop()
         XCTAssertEqual(value,nil)
    }
   
  
}
