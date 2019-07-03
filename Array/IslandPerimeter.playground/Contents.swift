import UIKit

/**
 You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water.
 
 Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).
 
 The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.
 
 给定一个二维整数网格形式的地图，其中1表示土地，0表示水。 求陆地变长
 
 /// 给定一个非负整数数组A，返回一个数组，该数组由A的所有偶数元素组成，然后是A的所有奇数元素。
 
 Example:
 
 Input:
 [[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
 
 Output: 16
 
 */

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var island = 0, neighbor = 0
    for row in 0..<grid.count {
        for column in 0..<grid[row].count {
            /// 如果是陆地, 那么island加1, 然后看他的右邻居和下邻居是否是陆地
            if grid[row][column] == 1 {
                island += 1
                let right_neighbor_index = column + 1
                let down_neighbor_index = row + 1
                if right_neighbor_index < grid[row].count && grid[row][right_neighbor_index] == 1 {
                    neighbor += 1
                }
                if down_neighbor_index < grid.count && grid[down_neighbor_index][column] == 1 {
                    neighbor += 1
                }
          }
      }
   }
    /// 因为只要重叠 就会消失两条边
    return island * 4 - neighbor * 2
}

print(islandPerimeter([[0,1,0,0],
                       [1,1,1,0],
                       [0,1,0,0],
                       [1,1,0,0]]))

