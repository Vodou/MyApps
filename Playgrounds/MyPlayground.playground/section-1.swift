// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var strcon = str + " what up"

var name = "Fritz"

name = "not Fritz"

var myInt:Int16 = 4

myInt += 1

name = name + "\(myInt)"


var a = 3.5
var b = 4
var c = a * Double(b)
var final = "\(a) times \(b) is \(c)"

var arr = [1, 2, 3, 4, 5]

var arr1 = arr[0]

arr.append(6)

println(arr)

arr.removeLast()

arr

arr.removeAtIndex(1)

arr

arr.reverse()

arr.removeRange(1...2)

var newarr = [1, 2.4, "yo"]

var emptyarr:[Int]

var dict = ["name": "Fritz", "age":34, "gender": "Male"]

println(dict["name"]!)

dict["hairColor"] = "Black"

var namenew = dict["name"]

var mystring = "My name is \(namenew!)"

var arrtest = [2, 4, 6, 8]

arrtest.removeAtIndex(0)

arrtest.append(10)
///////////////////////////////////////////////////

for var i = 5; i <= 50; i = i + 5 {
    
    println(i)
    

}

var arrloop = [1, 2, 3, 4]

for var i = 0; i < arrloop.count; i++ {
    println(arrloop[i])
    }

for x in arrloop{
    println(x)
}

for (index, x) in enumerate(arrloop){
    arrloop
}

