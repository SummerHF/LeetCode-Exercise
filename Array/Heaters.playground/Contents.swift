import UIKit

/**
 Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
 
 /// 给定一个非负整数数组A，返回一个数组，该数组由A的所有偶数元素组成，然后是A的所有奇数元素。
 
 You may return any answer array that satisfies this condition.
 
 Example 1:
 Input: [3,1,2,4]
 Output: [2,4,3,1]
 The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
 
 Note:
 1. 1 <= A.length <= 5000
 2. 0 <= A[i] <= 5000
 */

//print(sortArrayByParitySolutionTwo([3, 1, 2, 4]))

func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
    
    var minRadius = 1
    var tempSet = Set(heaters)
    let housesSet = Set(houses)
    if housesSet.isSubset(of: tempSet) {
        return 0
    }
    var loop = true
    while loop {
        for heater in heaters {
            let minLocation = heater - minRadius > 0 ? heater - minRadius : 0
            let maxLocation = heater + minRadius
            var tempArray = [Int]()
            for i in minLocation...maxLocation {
                tempArray.append(i)
            }
            tempSet.formUnion(tempArray)
        }
        if housesSet.isSubset(of: tempSet) {
            print(true)
            loop = false
            break
        } else {
            minRadius += 1
        }
    }
    return minRadius
}

print(findRadius([10, 12, 13, 44], [1, 6, 9]))

