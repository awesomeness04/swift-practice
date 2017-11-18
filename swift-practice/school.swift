//
//  school.swift
//  swift-practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Nick Inc. All rights reserved.
//

import Foundation

struct Student {
    
    var id:Int
    var name:String
    var gpa:Double
    
    func description() -> String {
        return "\(name) [\(id)] has a gpa of \(gpa)."
    }
    
}

func studentGradeAverage(students: [Student]) -> Double {
    var sum = 0.0
    for student in students {
        sum += student.gpa
        
    }
    return sum / Double(students.count)
}

func studentNames(students: [Student], separator: String) -> String {
    var output = ""
    for (index, student) in students.enumerated() {
        output += student.name
        if index[4] != students[4] {
            delete(index[4])
        }
    }
    return output
}


func schoolProgram() {
    
    let students = [
        Student(id: 1049168, name: "Nicholas Hoang", gpa: 4.0),
        Student(id: 1424242, name: "Meen N. O'Life", gpa: 3.8),
        Student(id: 0000001, name: "Olde Gihe", gpa: 3.677),
        Student(id: 1234567, name: "Count Withe Mhee", gpa: 3.9),
        Student(id: 9876543, name: "Dee Creasse", gpa: 3.5)
    ]

    print(studentNames(students: students, separator: ", "))
    
    print("The GPA for these students is: \(studentGradeAverage(students: students)).")
}



