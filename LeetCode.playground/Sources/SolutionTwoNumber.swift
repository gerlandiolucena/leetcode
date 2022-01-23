import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

public class Solution {
   public class func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       guard let l1 = l1, let l2 = l2 else {
           return l1
       }
       
       var listNodeResult: ListNode?
       var currentNode: ListNode?
       
       let listValuesl1 = returnValue(l1)
       let listValuesl2 = returnValue(l2)
       
       print(listValuesl1)
       print(listValuesl2)
       
       let maxIndex = max(listValuesl1.count, listValuesl2.count)
       
       var carryValue = 0
       
       for i in 0..<maxIndex {
           var valuel1 = 0
           var valuel2 = 0
           if listValuesl1.count - 1 >= i {
               valuel1 = listValuesl1[i]
           }
           if listValuesl2.count - 1 >= i {
               valuel2 =  listValuesl2[i]
           }
           
           let sumValues = carryValue + valuel1 + valuel2
           carryValue = sumValues / 10
           if listNodeResult == nil {
               listNodeResult = ListNode(sumValues % 10)
               currentNode = listNodeResult
           } else {
               currentNode?.next = ListNode(sumValues % 10)
               currentNode = currentNode?.next
           }
       }
       
       if carryValue > 0 {
           currentNode?.next = ListNode(carryValue % 10)
       }
       
       return listNodeResult
   }
   
   public class func returnValue(_ l1: ListNode) -> [Int] {
       var itens: [Int] = []
       itens.append(l1.val)
       
       guard let next = l1.next else {
           return itens
       }
       
       itens.append(contentsOf: returnValue(next))
       return itens
   }
}

public func createListNode(numbers: [Int]) -> ListNode? {
   var node: ListNode?
   var currentNode: ListNode?
   
   for number in numbers {
       if node == nil {
           node = ListNode(number)
           currentNode = node
       } else {
           currentNode?.next = ListNode(number)
           currentNode = currentNode?.next
       }
   }
   
   return node
}
