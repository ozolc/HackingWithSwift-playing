import Foundation

let numbers = [1, 2, 3, 4, 5]
let doubled = numbers.map { $0 * 2 }
print(doubled)

let strings = ["Apple", "Banana", "Pear"]
let uppercased = strings.map { $0.uppercased() }
print(uppercased)

// Coding our own map()

extension Sequence {
    public func map2<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
        var result = [T]()
        
        for item in self {
            result.append(try transform(item))
        }
        
        return result
    }
}

let doubled2 = numbers.map2 { $0 * 2 }
print(doubled2)

let uppercased2 = strings.map2 { $0.uppercased() }
print(uppercased2)
