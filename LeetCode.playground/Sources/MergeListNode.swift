import Foundation

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    if list1 == nil && list2 == nil { return nil }
    var merged = [Int]()
    if let listA = list1 {
        merged += returnValue(listA)
    }
    if let listB = list2 {
        merged += returnValue(listB)
    }

    return createListNode(numbers: merged.sorted())
}
   
func returnValue(_ l1: ListNode) -> [Int] {
   var itens: [Int] = []
   itens.append(l1.val)
   
   guard let next = l1.next else {
       return itens
   }
   
   itens.append(contentsOf: returnValue(next))
   return itens
}
