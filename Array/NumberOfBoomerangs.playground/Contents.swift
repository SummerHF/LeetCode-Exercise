import UIKit

/**
 Given n points in the plane that are all pairwise distinct, a "boomerang" is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).
 
 Find the number of boomerangs. You may assume that n will be at most 500 and coordinates of points are all in the range [-10000, 10000] (inclusive).
 
 给定平面上n个成对不同的点，一个“回旋镖”是一个点的元组(i, j, k)，这样i和j之间的距离等于i和k之间的距离(元组的顺序很重要)。
 
 找出回旋镖的数量。您可以假设n最多为500，并且点的坐标都在[-10000,10000](包括)范围内。
 
 Example:
 
 Input:
 [[0,0],[1,0],[2,0]]
 
 Output:
 2
 
 Explanation:
 The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]]
 */


func numberOfBoomerangs(_ points: [[Int]]) -> Int {
    var res = 0
    /// 首先遍历点数组, 计算出其他点与当前点之间的距离
    for i in 0..<points.count {
        var distanceDict = [Int: Int]()
        for j in 0..<points.count {
    /// 如果正好是当前点 直接跳过
            if i == j  { continue }
    /// 使用字典存储距离, 距离相等时，对应的距离Key 其 Value就加1
            let distance = caculateDistance(pointI: points[i], pointJ: points[j])
            if let equalDistance = distanceDict[distance] {
                distanceDict[distance] = equalDistance + 1
            } else {
                distanceDict[distance] = 1
            }
        }
        for value in distanceDict.values {
            res += value * (value-1)
        }
    }
    return res
}

func caculateDistance(pointI: [Int], pointJ: [Int]) -> Int {
    let distanceX = pointJ[0] - pointI[0]
    let distanceY = pointJ[1] - pointI[1]
    return distanceX * distanceX + distanceY * distanceY
}

print(numberOfBoomerangs([[1,1],[2,2],[3,3]]))




