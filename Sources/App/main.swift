var x = [Int]()
x = [1,2,3,4,5,6,7,8,9]
x.shuffle()
//shuffles to create a first line this is easier than using logic to try to generate a new line
print(x)
//var counter = 1
///stores all the lines for the sudoku board
var row1 = [Int]()
var row2 = [Int]()
var row3 = [Int]()
var row4 = [Int]()
var row5 = [Int]()
var row6 = [Int]()
var row7 = [Int]()
var row8 = [Int]()
var row9 = [Int]()
  
public class Scram {
    //this function scrambles the entire line it takes the previous line and then shifts either 1 or 3 to the left based on the parameters you input also the previous array is an
    //parameter 
    //works

    func scrambler (rotat:[Int],track:Int) ->[Int]{
        var fullboard = [[Int]]()
        var count = 1 //keeps track of the numbers
        var fir = [Int]() //stores first part of sudoku board
        var sec = [Int]() //stores second part of sudoku board
        var f = [Int]() //stores the final and is returned to become the next row
        for i in rotat{ //loops through previous array to shift them to left
            if count <= track { //uses track to see how many to take off the front 
                fir.append(i) //add to a first array
                count += 1
            }
            else{
                sec.append(i) //add to a seconf array
                count += 1   
            }       
        }
        f = sec + fir //combines the arrays together
        return f
    }
        init(){
            row1 = x
            row2 = (scrambler(rotat:row1,track:3))
            row3 = (scrambler(rotat:row2,track:3))
            row4 = (scrambler(rotat:row3,track:1))
            row5 = (scrambler(rotat:row4,track:3))
            row6 = (scrambler(rotat:row5,track:3))
            row7 = (scrambler(rotat:row6,track:1))
            row8 = (scrambler(rotat:row7,track:3))
            row9 = (scrambler(rotat:row8,track:3))

        
    }
        
}    
    
    //call the function for every row could have been done more effiecently but couldnt think
var p = Scram()
print(row1)
print(row2)
print(row3)
print(row4)
print(row5)
print(row6)
print(row7)
print(row8)
print(row9)

//let er = eraser()
//var nrow12 = er.newrow(Old:x,takeout:1)
//nrow1 = eraser().newrow(Old:x,takeout:1)
//also couldnt think of a better method to print them all in less lines
