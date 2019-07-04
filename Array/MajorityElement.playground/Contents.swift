import UIKit

/**
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 /// 给定一个大小为n的数组，找到出现次数最多的元素。
 
 Example 1:
 
 Input: [3,2,3]
 Output: 3
 Example 2:
 
 Input: [2,2,1,1,1,2,2]
 Output: 2
 */

/// Using dict bad solution
func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int: Int]()
    for num in nums {
        if let value = dict[num] {
            dict[num] = value + 1
        } else {
            dict[num] = 1
        }
    }
    var num = 0
    var res = 0
    for (value, count) in dict {
        if count > num {
            num = count
            res = value
        }
    }
    return res
}

///O(nlogn)
func majorityElementMethod(_ nums: [Int]) -> Int {
    let temp = nums.sorted()
    /// 注意题目中的 more than ⌊ n/2 ⌋ times
    return temp[nums.count / 2]
}

print(majorityElementMethod([1,1,1,1,1,2,4,5]))



