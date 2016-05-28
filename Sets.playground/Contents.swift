//: # Sets:
//: [Playground to accompany this tutorial article](http://troz.net/2016/05/learning-swift-sets/): http://troz.net/2016/05/learning-swift-sets/
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
mySet.insert("dog")


// myArray.remove("hamster")
if let index = myArray.indexOf("hamster") {
   myArray.removeAtIndex(index)
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

for (index, animal) in mySet.enumerate() {
   print("\(index) = \(animal)")
}

//for index in 0 ..< mySet.count {
//   print("\(index) = \(mySet[index])")
//}

//: ---
//: ## Where Sets get really interesting:
let set1: Set = ["dog", "cat", "pig"]
let set2: Set = ["cow", "horse", "pig"]

let intersect = set1.intersect(set2)
let union = set1.union(set2)
let xor = set1.exclusiveOr(set2)
let subtract = set1.subtract(set2)

//: ### Sub-sets:
let smallSet: Set = ["pig", "cow"]

smallSet.isSubsetOf(set1)
smallSet.isSubsetOf(set2)

set1.isSubsetOf(set1)
set1.isStrictSubsetOf(set1)

//: ### Super-sets:
set1.isSupersetOf(smallSet)
set2.isSupersetOf(smallSet)

set1.isSupersetOf(set1)
set1.isStrictSupersetOf(set1)

//: ### Disjoint sets:
let otherSet: Set = ["bird", "chicken"]

set1.isDisjointWith(set2)
set1.isDisjointWith(otherSet)
