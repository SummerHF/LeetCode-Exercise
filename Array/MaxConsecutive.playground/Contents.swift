import UIKit

/**
 Given a binary array, find the maximum number of consecutive 1s in this array.
 
 /// 给定一个二进制数组，找出该数组中连续的1的最大数目。
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 */

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var res = 0
    var count = 0
    for item in nums {
        if 1 == item {
            res += 1
        } else {
            count = max(res, count)
            res = 0
        }
    }
    return max(count, res)
}

func findMaxConsecutiveOnesMethodTwo(_ nums: [Int]) -> Int {
    var res = 0
    var count = 0
    for item in nums {
        if 1 == item {
            res += 1
            count = max(res, count)
        } else {
            res = 0
        }
    }
    return count
}

print(findMaxConsecutiveOnesMethodTwo([1, 1, 0, 1, 1, 1]))

