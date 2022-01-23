import Foundation


public class BetweenTwoSets {
    public class func getTotalX(a: [Int], b: [Int]) -> Int {
        let f = lcm(input: a)
        let l = gcd(input: b)
        var count = 0;
//
//        //    for (int i=f;
//        //        i*i<l;
//        //        i+=f)
//        for i in stride(from: f, to: l, by: f) {
//            if i * i < l {
//                if l % i == 0 { count += 1}
//            } else { break }
//        }
//        //    for(int i = f, j =2; i<=l; i=f*j,j++){
//        //
//        //    }
//
        return count
    }
    
    public class func gcd(_ x: Int, _ y: Int) -> Int {
        var a = 0
        var b = max(x, y)
        var r = min(x, y)
        
        while r != 0 {
            a = b
            b = r
            r = a % b
        }
        return b
    }
    
    public class func gcd(input: [Int]) -> [Int] {
        var result: [Int] = []
        result.append(input[0])
        for i in 1..<input.count {
            guard let last = result.last else { break }
            result.append(gcd(last, input[i]))
        }
        return result
    }
    
    public class func lcm(_ x: Int, _ y: Int) -> Int {
        return x / gcd(x, y) * y
    }
    
    public class func lcm(input: [Int]) -> Int {
        var result = input[0];
        for i in 1..<input.count {
            result = lcm(result, input[i]);
        }
        return result;
    }
}
