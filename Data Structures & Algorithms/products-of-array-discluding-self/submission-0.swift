class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = []
        var suffix: [Int] = []
        var prefixSum = 1
        var suffixProduct = 1
        prefix.append(1)
        for i in 1..<nums.count {
            let num = nums[i - 1] * prefixSum
            prefix.append(num)
            prefixSum = num 
        }

        suffix.append(1)
        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            let num = nums[i + 1] * suffixProduct
            suffix.insert(num, at: 0)
            suffixProduct = num
        }

        return zip(prefix, suffix).map { $0 * $1 }
    }
}
