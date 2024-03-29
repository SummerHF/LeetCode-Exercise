import UIKit

/**
 Winter is coming! Your first job during the contest is to design a standard heater with fixed warm radius to warm all the houses.
 
 Now, you are given positions of houses and heaters on a horizontal line, find out minimum radius of heaters so that all houses could be covered by those heaters.
 
 So, your input will be the positions of houses and heaters seperately, and your expected output will be the minimum radius standard of heaters.
 
 冬天来了！您在比赛期间的第一份工作是设计一个固定温暖半径的标准加热器，以加热所有房屋。
 现在，您可以在水平线上获得房屋和加热器的位置，找出加热器的最小半径，以便所有房屋都能被这些加热器覆盖。
 因此，您的输入将分别是房屋和加热器的位置，您的预期输出将是加热器的最小半径标准。
 
 Note:
 
 Numbers of houses and heaters you are given are non-negative and will not exceed 25000.
 Positions of houses and heaters you are given are non-negative and will not exceed 10^9.
 As long as a house is in the heaters' warm radius range, it can be warmed.
 All the heaters follow your radius standard and the warm radius will the same.
 
 Example 1:
 Input: [1,2,3],[2]
 Output: 1
 Explanation: The only heater was placed in the position 2, and if we use the radius 1 standard, then all the houses can be warmed.
 
 Example 2:
 Input: [1,2,3,4],[1,4]
 Output: 1
 Explanation: The two heater was placed in the position 1 and 4. We need to use radius 1 standard, then all the houses can be warmed.
 
 */

/// 记录每一个房子离加热器的最小半径，然后比较，最大的即为最小半径
/// 2 * house >= heat[i] + heat[i+1]: 这句话是最难理解的，提供了图片

func findRadius(_ houses: [Int], _ heaters: [Int]) -> Int {
    let house = houses.sorted()
    let heat = heaters.sorted()
    var i = 0
    var radius = 0
    for house in house {
        while i < heaters.count - 1 && 2 * house >= heat[i] + heat[i+1] {
            i += 1
        }
        radius = max(radius, abs(house - heat[i]))
    }
    return radius
}



