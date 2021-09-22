var row1 = [Int]()
var row2 = [Int]()
var row3 = [Int]() 
var row4 = [Int]() 
var row5 = [Int]()
var row6 = [Int]()
var row7 = [Int]() 
var row8 = [Int]() 
var row9 = [Int]() 
 


print(row1)

func newrow (Old:[Int],takeout:Int) {
    var takout = takeout
    var oldv = [Any]()
    oldv = Old
    repeat{
        let delete = Int.random(in: 0..<8)
        oldv[delete] = " "
        takout += 1
    }while 5 > takout
    print(oldv)
}

var a = [1,2,3,4,5,6,7,8,9]
var b = [Any?]()
var c =  [Any]()
b = [1,2,3,4,5,6,7,8,9]
//b.append(nil)
//removes the optional from the array and just keeps the numbers
for cell in b {
    if let cell = cell {
        //print(cell)
        c.append(cell)
    } else {
        //print(" empty ")
        c.append("empty")
    }      
}
//print(c)
//print(c.count)
//print(b.count)
newrow(Old:a,takeout:1)
