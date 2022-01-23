import Foundation

public class LongestSubstring {
    public class func lengthOfLongestSubstring(_ s: String) -> Int {
        var substring = ""
        var lastLongestSubstring = 0
        for char in s {
            if !substring.contains(char) {
                substring += "\(char)"
                print("NEW Char: \(char), NEW Subs: \(substring)")
            } else {
                if lastLongestSubstring < substring.count {
                    lastLongestSubstring = substring.count
                }
                
                
                substring = String(substring.suffix(from: substring.index(substring.firstIndex(of: char)!, offsetBy: 1)))
                
                    
                substring += "\(char)"
                print("Found Char: \(char), New Subs: \(substring)")
            }
        }
        
        if substring.count > lastLongestSubstring {
            lastLongestSubstring = substring.count
        }
        
        return lastLongestSubstring
    }
}


