class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = s.filter { $0.isLetter || $0.isNumber }.replacingOccurrences(of: " ", with: "").lowercased()
        return s == String(s.reversed())
    }
}
