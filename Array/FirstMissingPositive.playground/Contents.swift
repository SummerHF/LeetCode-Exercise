import UIKit

/**
 Given an unsorted integer array, find the smallest missing positive integer.
 
 Example 1:
 
 Input: [1,2,0]
 Output: 3
 Example 2:
 
 Input: [3,4,-1,1]
 Output: 2
 Example 3:
 
 Input: [7,8,9,11,12]
 Output: 1
 Note:
 
 Your algorithm should run in O(n) time and uses constant extra space.
 */

func firstMissingPositive(_ nums: [Int]) -> Int {
    if var smallest = nums.first {
        for num in nums {
            if num < smallest {
                smallest = num
            }
        }
        if smallest > 1 {
            return 1
        } else {
            while nums.contains(smallest) {
                smallest += 1
                if smallest <= 0 {
                    smallest = 1
                }
            }
        }
        return smallest
    } else {
        return 1
    }
}

print(firstMissingPositive([3,4,-1,1]))



