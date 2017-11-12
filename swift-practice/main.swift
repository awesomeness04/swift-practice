import Foundation

//let apples = 5
//let appleCounter = "You have \(apples) apples!"
//print(appleCounter)

//var userApples: Int? = 9
//if apples !=  nil {
//    print("You have \(apples!) Apple products in your online shopping cart!" )
//}
//else {
//    print("You have no apples.")
//}

//if let apples = userApples {
//    print("You have \(apples) Apple products in your online shopping cart!" )
//}
//else {
//  print("You have no apples.")
//}
//
//var integer: Int?
//var string: String? = "hello"
//var boolean: Bool? = true
//var double: Double?



//print("What's your name?")
//
//let name = readLine()
//if let nameTwo = name {
//    print("Hello, \(nameTwo)!")
//}
//else {
//    print("Hello, person who has no name!")
//}

//print("Enter a number.")
//let firstNum = readLine()
//print("Enter a second number.")
//let secondNum = readLine()
//
//guard let unwrappedFirstNum = firstNum
//    else {
//        print("YOU, SHALL NOT PASS!!!")
//        exit(1)
//}
//guard let unwrappedSecondNum = secondNum
//    else {
//        print("YOU, SHALL NOT PASS!!!")
//        exit(1)
//}
//
//
//print("The sum of the two numbers is \(Double(unwrappedFirstNum)! + Double(unwrappedSecondNum)!)")

//Q:23rd President
//A:BENJAMIN HARRISON, William McKinley, Grover Cleveland, Chester Arthur

//Q:Which city is NOT a capital of a state?
//A:Montepelier, Harrisburg, Helena, CHARLOTTE

//Q:Which of these quotes is NOT an ancient proverb?
//A:"Fall down 7 times, get back up 8", "MONEY OFTEN COSTS TOO MUCH", "To have joy one must share it. Happiness was born a twin", "Give a man a fish and you feed him for a day. Teach a man to fish and you feed him for a lifetime."

//Q:Population of New York City?
//A: 8.5 MILLION, 7.4 million, 9.1 million, 9.2 million

//Q:Which city is not real?
//A:BIGFOOT, IOWA, Embarass, Minnesota, Dogtown, Alabama, Chicken, Alaska

//var score = 0
//print("Hello! You are taking a quiz! But first, what's your name?")
//let name = readLine()
//print("Q:23rd President?\n\tA.Benjamin Harrison\n\tB.William McKinley\n\tC.Grover Cleveland\n\tD.Chester Arthur")
//let one = readLine()
//if one == "A" {
//    score = score + 1
//    print("Good job! You get a point! Now you have \(score) point!")
//}
//else {
//    print("Aww....incorrect. Nice try, though! You have \(score) points so far.")
//}
//print("Q:Which city is NOT a capital of a state?\n\tA.Montepelier\n\tB.Harrisburg\n\tC.Helena\n\tD.Charlotte")
//let two = readLine()
//if two == "D" {
//    score = score + 1
//    print("Nice work! You get a point! Now you have \(score) points!")
//}
//else {
//    print("Aww....you're wrong. Nice try, though! You have \(score) points so far.")
//}
//print("Q:Which of these quotes is NOT an ancient proverb?\n\tA.Fall down 7 times, get back up 8\n\tB.Money often costs too much\n\tC.To have joy one must share it. Happiness was born a twin\n\tD.Give a man a fish and you feed him for a day. Teach a man to fish and you feed him for a lifetime")
//let three = readLine()
//if three == "B" {
//    score = score + 1
//    print("Splendid! You get a point! Now you have \(score) points!")
//}
//else {
//    print("Aww....you got that one wrong. Nice try, though! You have \(score) points so far.")
//}
//print("Q:Population of New York City?\n\tA.8.5 million\n\tB.7.4 million\n\tC.9.1 million\n\tD.9.2 million")
//let four = readLine()
//if four == "A" {
//    score = score + 1
//    print("Amazing! You get a point! Now you have \(score) points!")
//}
//else {
//    print("Aww....you failed to answer the question appropiately. Nice try, though! You have \(score) points so far.")
//}
//print("Q:Which city does not exist?\n\tA.Bigfoot, Iowa\n\tB.Embarrass, Minnesota\n\tC.Dogtown, Alabama\n\tD.Chicken, Alaska")
//let five = readLine()
//if five == "A" {
//    score = score + 1
//    print("Wowza! You get a point! You finished with \(score) points!")
//}
//else {
//    print("Aww....you failed. Nice try, though! You finished with \(score) points.")
//}

//let coordinate = (x:3,y:2)
//print(coordinate.x)

//var emptyTuple: (x: Int, y: Int)

//let integerArray = [1,2,3,4,5]
//let emptyArray : [String]
//print(emptyArray)

func distance(t: Double) -> Double {
    return (0.5 * 9.81 * t * t)
}

//print(distance(t: 7.0))

func position(x:Double, v:Double, a:Double, t:Double) -> Double {
    return (x + v * t + 0.5 * a * t * t)
}

//print(position(x: 100.0, v: 30.0, a: -32.0, t: (15.0 / 16.0)))

let G           = 6.67408 * pow(10.0, -11.0)
let earthRadius = 6.3781  * pow(10.0, 6.0)
let earthMass   = 5.9722  * pow(10.0, 24.0)

func forceOfGravity(m1:Double, m2:Double, r: Double) -> Double {
    return G * ((m1 * m2) / (r * r))
}

//print(forceOfGravity(m1: 72.5748, m2: earthMass, r: earthRadius) / 72.5748)

func positionTable(duration:Double, interval:Double) {
    var time = 0.0
    while time <= duration {
        print("\(time)s: \(position(x: 100.0, v: 30.0, a: -32.0, t: time))")
        time += interval
    }
}
/*
print("What's the initial position above sea level in feet?")
let x = readLine()
print("What's the initial velocity in feet per second?")
let v = readLine()
print("What's the acceleration in negative feet per second?")
let a = readLine()
print("What's the duration of the simulation in seconds?")
let duration2 = readLine()
print("What's the interval between each recorded time in seconds?")
let interval = readLine()
*/
/*
guard let unwrappedDuration = duration2
    else {
        print("You shall not pass")
        exit(1)
}
 */


// positionTable(duration: duration, interval: interval)

func celsiusToFahrenheit(c:Double) -> Double {
    return 9.0 / 5.0 * c + 32.0
}

func fahrenheitToCelsius(f:Double) -> Double {
    return 5.0 / 9.0 * f - 5.0 / 9.0 * 32
}
func celsiusToKelvin(c:Double) -> Double {
    return c + 273.15
}

func fahrenheitToKelvin(f:Double) -> Double {
    return celsiusToKelvin(c: fahrenheitToCelsius(f:f))
}
/*
print(celsiusToFahrenheit(c: 0.0)) // => 32.0
print(fahrenheitToCelsius(f: 32.0)) // => 0.0
print(celsiusToKelvin(c: 0.0)) // => 273.15
print(fahrenheitToKelvin(f:32.0)) // => 273.15
*/

print("Enter a temperature (F, C, or K)")
let ask = readLine()



print("32F")
print(" = 0C")
print(" = 273.15K")


