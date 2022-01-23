import Foundation


public func romanToInt(_ s: String) -> Int {
    let roman = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var lastValue = 0
    var finalValue = 0
    for value in String(s.reversed()) {
        let valueRoman = roman[String(value)] ?? 0
        if lastValue > valueRoman {
            finalValue -= valueRoman
        } else {
            finalValue += valueRoman
        }
        lastValue = valueRoman
    }
    
    return finalValue
}

//romanToInt("MCMXCIV")

public func longestCommonPrefix(_ strs: [String]) -> String {
    var prefix = ""
    let maxIndex = strs.map { $0.count }.min() ?? 0
    for index in 0..<maxIndex {
        let resultString = strs.map { str in str[str.index(str.startIndex, offsetBy: index)] }
        let uniques = Set(resultString)
        if  uniques.count == 1, let char = uniques.first {
            prefix = "\(prefix)\(char)"
        } else {
            break
        }
    }
    
    return prefix
}

//longestCommonPrefix(["dog","racecar","car"])

public func isValid(_ s: String) -> Bool {
    let closedValue = ["(": ")", "[": "]", "{": "}"]
    let openValue = [")": "(", "]": "[", "}": "{"]
    var openValues = [String]()

    for item in s {
        if closedValue.keys.contains(String(item)) {
            openValues.append(String(item))
            continue
        }
        if let valueClosed = openValue[String(item)],
           valueClosed == openValues.last {
            openValues = openValues.dropLast()
        } else {
            return false
        }
    }

    return openValues.count == 0
}

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var removed = 0
    while nums.contains(val) {
        if let indexToRemove = nums.lastIndex(of: val) {
            nums.remove(at: indexToRemove)
            removed += 1
        }
    }
    
    return removed
}
