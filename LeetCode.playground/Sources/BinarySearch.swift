import Foundation

public class SolutionBinarySearch {
    public func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if (nums.last ?? 0) < target {
            return nums.count
        } else if (nums.first ?? 0) > target {
            return 0
        }
        
        return findInsert(nums: nums, start: 0, stop: nums.count - 1, target: target)
    }
    
    public func search(_ nums: [Int], _ target: Int) -> Int {
        return find(nums: nums, start: 0, stop: nums.count - 1, target: target)
    }
    
    func findInsert(nums: [Int], start: Int, stop: Int, target: Int) -> Int {
        if (stop >= start) {
            let mid = start + (stop - start) / 2
            if nums[mid] == target || (mid-1 >= 0 && nums[mid-1] < target &&  nums[mid] >= target){
                return mid
            }

            if nums[mid] > target {
                //print("nums[mid] > target \(nums[mid] > target)")
                return findInsert(nums: nums, start: start, stop: mid - 1, target: target)
            }

            return findInsert(nums: nums, start: mid + 1, stop: stop, target: target)
        }

        return -1
    }
    
    func find(nums: [Int], start: Int, stop: Int, target: Int) -> Int {
        if (stop >= start) {
            let mid = start + (stop - start) / 2
            if nums[mid] == target {
                return mid
            }

            if nums[mid] > target {
                return find(nums: nums, start: start, stop: mid - 1, target: target)
            }

            return find(nums: nums, start: mid + 1, stop: stop, target: target)
        }

        return -1
    }
}
