import UIKit

/**
 
 Given two arrays, write a function to compute their intersection.
 
 Example 1:
 
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2,2]
 Example 2:
 
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [4,9]
 Note:
 
 Each element in the result should appear as many times as it shows in both arrays.
 The result can be in any order.
 Follow up:
 
 What if the given array is already sorted? How would you optimize your algorithm?
 What if nums1's size is small compared to nums2's size? Which algorithm is better?
 What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
 */

/// O(n)time, O(n)space
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = Dictionary(nums1.map{($0, 1)}, uniquingKeysWith: +)
    var res = [Int]()
    for num in nums2 {
        if let count = dict[num], count > 0 {
            res.append(num)
            dict[num] = count - 1
        }
        continue
    }
    return res
}

intersection([4,9,5], [9,4,9,8,4])





