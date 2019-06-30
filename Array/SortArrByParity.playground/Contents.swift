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

func sortArrayByParitySolutionOne(_ A: [Int]) -> [Int] {
    var evenArray = [Int]()
    var oddArray = [Int]()
    for i in 0..<A.count {
        if A[i] % 2 == 0 {
            evenArray.append(A[i])
        } else {
            oddArray.append(A[i])
        }
    }
    evenArray += oddArray
    return evenArray
}

func sortArrayByParitySolutionTwo(_ A: [Int]) -> [Int] {
    var tempArray = [Int]()
    for (_, value) in A.enumerated() {
        tempArray.insert(value, at: value % 2 == 0 ? 0 : tempArray.count)
    }
    return tempArray
}

print(sortArrayByParitySolutionTwo([3, 1, 2, 4]))



