import Foundation

public class MedianSorted {
    public class func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var finalArray = nums1 + nums2
        finalArray.sort()
        
        if finalArray.count % 2 > 0 {
            return Double(finalArray[finalArray.count / 2])
        } else {
            let centerValueA = Double(finalArray[finalArray.count / 2])
            let centerValueB = Double(finalArray[(finalArray.count / 2) - 1])
            return (centerValueA + centerValueB) / 2
        }
    }
}




