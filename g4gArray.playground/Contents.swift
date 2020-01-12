import UIKit

var str = "Hello, playground"


/*
 Program for array rotation
 Write a function rotate(ar[], d, n) that rotates arr[] of size n by d elements.
 https://www.geeksforgeeks.org/array-rotation/
 */

func arrayRotationTempArray(array:[Int], rotateBy:Int ) -> [Int] {
    var result = [Int]()
    var temp = [Int]()
    var ptr = 0 // primary pointer, iterates over entire array
    var ptr2 = 0 // secondary pointer to keep track of overflow
    
    for i in (0..<rotateBy) {
        // does all of the rotations
        
        if i >= array.count-1 {
            ptr2 = (rotateBy % array.count)-1 // reset incase of overflow
            
        } else {
            ptr = i
            ptr2 = ptr
            temp.append(array[ptr2])
        }
    }
   
    for i in (ptr+1..<array.count) {
        result.append(array[i])
    }
    
    for i in temp {
        result.append(i)
    }
    
    print(result)
    return result
    
}
let a = ([1,2,3,4,5,6,7], 2, [3,4,5,6,7,1,2])
let b = ([9,5,3],2, [3,9,5])
let c = ([4,4,4],4, [4,4,4])
let d = ([3,4],3,[4,3])
let e = ([4,3],3,[3,4])
let l = [a,b,c,d,e]

for n in l {
    assert(arrayRotationTempArray(array: n.0, rotateBy: n.1)==n.2)
}


