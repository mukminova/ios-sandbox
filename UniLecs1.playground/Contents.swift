let str = "sdsfasf"
var isTrue: Bool {
    return Set(str).count == str.count
}
//print("\(isTrue)")

var asd: (String) -> Bool
func isUniqueSymbol(_ str: String) -> Bool {
    return Set(str).count == str.count
}
//print("\(isUniqueSymbol("sxdcfggvhbjnkml"))")
//print("\(isUniqueSymbol("asd"))")

extension String {
    func isUniqueSymbol() -> Bool {
        return Set(self).count == self.count
    }
}
//print("\("asda".isUniqueSymbol())")
////////////////////////////////////////////////////



//print("\(binarySearch(arr, item: 3)!)")

func min(_ arr: [Int]) -> Int? {
    var low = 0
    let high = arr.count - 1
    var mid = arr.count / 2
    print("mid1 = \(mid)")
    var subArr = arr
    while subArr.count >= 2 {
        
        if subArr.count == 2 {
            if subArr[0] == subArr[1] {
                return subArr[0]
            }
            if subArr[0] < subArr[1] {
                return subArr[0]
            } else {
                return subArr[1]
            }
        }
        
        if (subArr[low] < subArr[mid]) {
            low = mid + 1
            mid = high
            print("low = \(low)")
            print("mid2 = \(mid)")
        }
        subArr = Array(arr[low...mid])
        print("\(subArr)")
    }
    return subArr[0]
}


func min1(_ arr: [Int]) -> Int? {
    var low = 0
    var high = arr.count - 1
    while low <= high {
        let mid = low + high
        print("mid = \(mid)")
        if arr[low...high].count == 2 {
            if arr[low] < arr[high] {
                return arr[low]
            } else {
                return arr[high]
            }
        }
        print("\(arr[low]) < \(arr[mid])")
        if arr[low] < arr[high] {
            print("low1 = \(low), arr = \(arr[low])")
            low = mid + 1
            print("low2 = \(low), arr = \(arr[low])")
        } else {
            high = mid - 1
            print("high = \(high), arr = \(arr[high])")
        }
    }
    print("low = \(low)")
    print("high = \(high)")
    return nil
}

//print("min1 = \(min1([4,5,6,7,3]) ?? 0)")
//print("min2 = \(min1([3,4,5,6,7,8,1,2]) ?? 0)")
//print("min3 = \(min1([5,6,7,8,1,2,3,4]) ?? 0)")
//print("min4 = \(min1([7,8,1,2,3,4,5,6]) ?? 0)")

func binarySearch(_ arr: [Int], item: Int) -> Int? {
    var low = 0
    var high = arr.count - 1
    while low <= high {
        let mid = (low + high)
        let guess = arr[mid]
        
        if guess == item {
            return mid
        }
        if guess>item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}


///////////////////////////////////////////////////////////////////////////////////////////
extension String {
    func modify(target: String.Element, withString: String) -> String {
        return self.split(separator: target).joined(separator: withString)
    }
}
print("\("asd sd ad".modify(target: " ", withString: "%20"))")

///////////////////////////////////////////////////////////////////////////////////////////

func checkForPolindrom(_ str: String) -> Bool {
    var check = Dictionary<Character, Int>()
    for i in str {
        if check.keys.contains(i) {
            check[i]! += 1
        } else {
            check[i] = 0
        }
    }
    let odds = check.values.filter {$0%2==0}.count
    if str.count % 2 == 0, odds == 0 {
        return true
    } else if odds == 1 {
        return true
    }
    return false
}
print("\(checkForPolindrom("asd"))")
print("\(checkForPolindrom("bobo"))")
print("\(checkForPolindrom("booob"))")


/////#164 автобан
let arr = [0, 1, 1, 0]
var s:Double = 0
for y in arr {
    s += Double(y)
}
s -= 0.5*Double(arr[0]+arr.last!)

let _ = s / Double(arr.count - 1)
print("\(s / Double(arr.count - 1))")
//////////////////////
func check() -> Int? {
    for i in 1...6 {
        for j in 1...6 {
            for k in 1...6 {
                for l in 1...6 {
                    for m in 1...6 {
                        for n in 1...6 {
                            if (i + 2*(j + k + l + m)) == (47 - 3*n) {
                                return i
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    
    return nil
}
check()

