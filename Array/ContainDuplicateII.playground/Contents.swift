import UIKit

/**
 Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.
 
 给定一个整数数组和一个整数k，找出数组中是否有两个不同的索引i和j，使得nums[i] = nums[j]，并且i和j之间的绝对差不超过k。
 
 Example 1:
 
 Input: nums = [1,2,3,1], k = 3
 Output: true
 Example 2:
 
 Input: nums = [1,0,1,1], k = 1
 Output: true
 Example 3:
 
 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false
 */

/// Time: O(n), Space: O(m)

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    guard nums.count >= 2 else { return false }
    var dict = [Int: Int]()
    for (index, value) in nums.enumerated() {
        if let num = dict[value], index - num <= k {
                return true
        } else {
           dict[value] = index
        }
    }
    return false
}

print(containsNearbyDuplicate([1,2,3,1,2,3], 2))





