import UIKit

/**
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Example:
 
 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Note:
 
 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 */

func moveZeroes(_ nums: inout [Int]) {
    guard nums.count > 0 else { return }
    var inserPos = 0
    for num in nums {
        if num != 0 {
            nums[inserPos] = num
            inserPos += 1
        }
    }
    while inserPos < nums.count {
        nums[inserPos] = 0
        inserPos += 1
    }
}
var array = [0, 1, 0, 3, 12]
print(moveZeroes(&array))
print(array)



