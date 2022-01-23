import Foundation

public class KangaroosRun {
    public class func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        return runKangaroo(x1: x1, v1: v1, x2: x2, v2: v2)
    }
    
    private class func runKangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        var x1StartPosition = x1
        var x2StartPosition = x2
        
        if (x1StartPosition > x2StartPosition) {
            while(x2StartPosition < x1StartPosition) {
                x1StartPosition += v1
                x2StartPosition += v2
            }
        } else {
            while(x2StartPosition > x1StartPosition) {
                x1StartPosition += v1
                x2StartPosition += v2
            }
        }
        
        return x1StartPosition == x2StartPosition ? "YES" : "NO"
    }
}
