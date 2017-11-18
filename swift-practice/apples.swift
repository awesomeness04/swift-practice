//
//  apples.swift
//  swift-practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Nick Inc. All rights reserved.
//

import Foundation

func applesProgram() {
    
    let apples: Int? = 5
    let appleCounter = "You have \(apples) apples!"
    print(appleCounter)
    
    let userApples: Int? = 9
    if apples !=  nil {
        print("You have \(apples) Apple products in your online shopping cart!" )
    }
    else {
        print("You have no apples.")
    }
    
    if let apples = userApples {
        print("You have \(apples) Apple products in your online shopping cart!" )
    }
    else {
      print("You have no apples.")
    }
    
}
