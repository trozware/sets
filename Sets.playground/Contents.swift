//: # Sets:
//: [Playground to accompany this tutorial article](https://troz.net/post/2016/learning-swift-sets/): https://troz.net/post/2016/learning-swift-sets/
//:
//: **A Set is an un-ordered collection of unique items.**

//: ## Creating a Set:
var myArray = ["dog", "cat", "hamster", "dog"]
var mySet: Set = ["dog", "cat", "hamster", "dog"]

var emptySetOfStrings: Set<String> = []
var emptySetOfInts: Set<Int> = []

//: ## Adding and removing elements:
if !myArray.contains("cat") {
   myArray.append("cat")
}

mySet.insert("goldfish")
mySet
mySet.insert("dog")
mySet

// myArray.remove("hamster")
if let index = myArray.index(of: "hamster") {
   myArray.remove(at: index)
}

mySet.remove("hamster")
mySet.remove("canary")

//: ## Converting between Sets and Arrays:
let myArrayAsSet = Set(myArray)
let mySetAsArray = Array(mySet)

let myArrayUniqued = Array(Set(myArray))

//: ## Iterating over elements in a Set:
for animal in mySet {
   print(animal)
}

for (index, animal) in mySet.enumerated() {
   print("\(index) = \(animal)")
}

//for index in 0 ..< mySet.count {
//   print("\(index) = \(mySet[index])")
//}

//: ---
//: ## Where Sets get really interesting:
let set1: Set = ["dog", "cat", "pig"]
let set2: Set = ["cow", "horse", "pig"]

let intersect = set1.intersection(set2)
let subtract = set1.subtracting(set2)
let union = set1.union(set2)
let xor = set1.symmetricDifference(set2)

//: ### Sub-sets:
let smallSet: Set = ["pig", "cow"]

smallSet.isSubset(of: set1)
smallSet.isSubset(of: set2)

set1.isSubset(of: set1)
set1.isStrictSubset(of: set1)

//: ### Super-sets:
set1.isSuperset(of: smallSet)
set2.isSuperset(of: smallSet)

set1.isSuperset(of: set1)
set1.isStrictSuperset(of: set1)

//: ### Disjoint sets:
let otherSet: Set = ["bird", "chicken"]

set1.isDisjoint(with: set2)
set1.isDisjoint(with: otherSet)
