import UIKit

/**
 Given an array of integers, find if the array contains any duplicates.
 
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 Example 1:
 
 Input: [1,2,3,1]
 Output: true
 Example 2:
 
 Input: [1,2,3,4]
 Output: false
 Example 3:
 
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

/// Bad solution
func containsDuplicate(_ nums: [Int]) -> Bool {
    let dict = Dictionary(nums.map{($0, 1)}, uniquingKeysWith: +)
    for num in nums {
        if let value = dict[num], value > 1 {
            return true
        } else {
            continue
        }
    }
    return false
}

/// Prefer solution
func containsDuplicateMethodTwo(_ nums: [Int]) -> Bool {
    return Set(nums).count < nums.count ? true : false
}

print(containsDuplicateMethodTwo([1,1,1,3,3,4,3,2,4,2]))




