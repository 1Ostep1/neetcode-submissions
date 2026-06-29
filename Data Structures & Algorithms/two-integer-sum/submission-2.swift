class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int: Int] = [:]
        for i in 0..<nums.count {
            let diff = target - nums[i]
            dict[diff, default: 0] = i
        }
        for j in 0..<nums.count {
            let num = nums[j]
            if let endIndex = dict[num], j != endIndex {
                return [j, endIndex]
            }
        }
        return []
    }
}
