//
//  stacktdd.swift
//  MtapBootcamp
//
//  Created by Vipul Jain on 23/08/21.
//

import UIKit

class Stacktdd: NSObject {
    var list : [Int] = [] ;
    func push(n:Int){
        list.append(n)
    }

    func pop() -> Int?{
        if((list.count) > 0){
            return (list.removeLast())
        }
        else{
        return nil
        }
        
    }
    func top() -> Int? {
        if(((list.count)) >= 0){
            return (list.last)
       }
   else{
        return nil
        }
    }
}
