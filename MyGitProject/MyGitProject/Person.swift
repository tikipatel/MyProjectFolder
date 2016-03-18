//
//  Person.swift
//  MyGitProject
//
//  Created by Pratikbhai Patel on 3/17/16.
//  Copyright © 2016 Pratikbhai Patel. All rights reserved.
//

import Foundation

class Person {
    
    var firstName: String?
    var lastName: String?
    
    func fullName() -> String {
        if let fName = self.firstName {
            if let lName = self.lastName {
                return fName + lName
            } else {
                return fName
            }
        } else {
            return ""
        }
    }
    
}