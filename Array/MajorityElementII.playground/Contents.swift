import UIKit

/**
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
 
 Note: The algorithm should run in linear time and in O(1) space.
 
 Example 1:
 
 Input: [3,2,3]
 Output: [3]
 Example 2:
 
 Input: [1,1,1,3,3,2,2,2]
 Output: [1,2]
 
 
 Moore majority vote algorithm(摩尔投票算法): https://www.cnblogs.com/zhonghuasong/p/6536665.html
 摩尔投票算法是一种使用线性时间和常数空间查找大部分元素序列的算法.
 */



func majorityElement(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    if nums.count == 0 {
        return res
    }
    var num1 = 0, num2 = 0, index1 = 0, index2 = 0
    for num in nums {
        if num == num1 {
            index1 += 1
        } else if num == num2 {
            index2 += 1
        } else if index1 == 0 {
            num1 = num
            index1 += 1
        } else if index2 == 0 {
            num2 = num
            index2 += 1
        } else {
            index1 -= 1
            index2 -= 1
        }
    }
    index1 = 0
    index2 = 0
    for num in nums {
        if num == num1 {
            index1 += 1
        } else if num == num2 {
            index2 += 1
        }
    }
    let count = nums.count / 3
    if index1 > count {
        res.append(num1)
    }
    if index2 > count {
        res.append(num2)
    }
    return res
}

print(majorityElement([4,2,1,1]))
print(8/3)



