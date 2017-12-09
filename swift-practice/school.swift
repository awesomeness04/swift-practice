//
//  school.swift
//  swift-practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Nick Inc. All rights reserved.
//

import Foundation
/*
struct Student {
    
    var id:Int
    var name:String
    var gpa:Double
    
    func description() -> String {
        return "\(name) [\(id)] has a gpa of \(gpa)."
    }
    
}
*/

class Person : CustomStringConvertible {
    
    var name:   String
    var gender: String
    var age:    Int
    
    var description: String {
        return "\(name) (\(age), \(gender))"
    }
    
    init(name: String, gender: String, age: Int) {
        self.name   = name
        self.gender = gender
        self.age    = age
    }
    
}

class Student : Person {
    
    var id:     Int
    var gpa:    Double
    
    // Name [id] (age, gender) with GPA gpa
    override var description: String {
        return "\(name) [\(id)] (\(age), \(gender)) with \(gpa) gpa"
    }
    init(name: String, gender: String, age: Int, id: Int, gpa: Double) {
        self.id  = id
        self.gpa = gpa
        super.init(name: name, gender: gender, age: age)
    }
    
}

class Teacher : Person {
    var coolness: Int
    
    override var description: String {
        return "\(name) (\(age), \(gender)) with \(coolness) coolness"
    }
    
    init(name: String, gender: String, age: Int, coolness: Int) {
        self.coolness = coolness
        super.init(name: name, gender: gender, age: age)
    }
}


class Class {
    
    var subject: String
    var teacher: String
    var roster:  [Student]
    
    init(subject: String, teacher: String, roster: [Student]) {
        self.subject = subject
        self.teacher = teacher
        self.roster  = roster
    }
    
    func listStudents(separator: String) -> String {
        var output = ""
        for (index, student) in roster.enumerated() {
            output += student.name
            if index != roster.count - 1 {
                output += separator
            }
            
        }
        return output
    }
    
    func calculateGradeAverage() -> Double {
        var sum = 0.0
        for student in roster {
            sum += student.gpa
            
        }
        return sum / Double(roster.count)
    }

    func printStudents(separator: String){
        print(listStudents(separator:separator))
    }
    
    func addStudent() {
        print("What's the student's name?")
        let newStudentName=readLine()
        print("What's the student's ID?")
        let newStudentId=readLine()
        print("What's the student's age?")
        let newStudentAge=readLine()
        print("What's the student's gender?")
        let newStudentGender=readLine()
        print("What's the student's GPA?")
        let newStudentGpa=readLine()
        let newStudent = Student(name: newStudentName!, gender: newStudentGender!, age: Int(newStudentAge!)!, id: Int(newStudentId!)!, gpa: Double(newStudentGpa!)!)
        roster.append(newStudent)
    }

    
    
}
/*
func studentGradeAverage(students: [Student]) -> Double {
    var sum = 0.0
    for student in students {
        sum += student.gpa
        
    }
    return sum / Double(students.count)
}
*/
func schoolProgram() {
    /*
    let myTeacher = Teacher(name: "Mr. Jean", gender: "Male", age: 31, coolness: 6)
    let myStudent = Student(name: "Jim Blue", gender: "Male", age: 16, id: 1056397, gpa: 3.9)
    let myPerson = Person(name: "Sarah Red", gender: "Female", age: 20)
    
    
    print(myPerson)
    print(myStudent)
    print(myTeacher)
    */
    
    
    var singleClass = Class(subject:"Science", teacher:"Mr. Ologey", roster: [
        Student(name: "Nicholas Hoang", gender: "Male", age: 13, id: 1049168, gpa: 4.0),
        Student(name: "Meen N. O'Life", gender: "Female", age: 42, id: 1424242, gpa: 3.8),
        Student(name: "Olde Gihe", gender: "Male", age: 89, id: 0000001, gpa: 3.677),
        Student(name: "Count Withe Mhee", gender: "Male", age: 123, id: 1234567, gpa: 3.9),
        Student(name: "Dee Creasse", gender: "Female", age: 210, id: 9876543, gpa: 3.5)
    ])
    
    
    
    
    
    
    
    
    
    
    
    
    
    // singleClass.printStudents(separator: "\n")
    // print(singleClass.calculateGradeAverage())
 
    
    
    /*
    print("What's the student's name?")
    let newStudentName=readLine()
    print("What's the student's ID?")
    let newStudentId=readLine()
    print("What's the student's GPA?")
    let newStudentGpa=readLine()
    var newStudent = Student(id: Int(newStudentId!)!, name: newStudentName!, gpa: Double(newStudentGpa!)!)
    
     singleClass.roster.append(newStudent)
    */
    singleClass.addStudent()
    singleClass.printStudents(separator: "\n")
    
    
    
    // print(studentNames(students: singleClass.roster, separator: " // ")) // TODO: why not slashes???
    
    //print("The GPA for these students is: \(studentGradeAverage(classes.students: classes.students)).")
   
}



