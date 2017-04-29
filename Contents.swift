//: Playground - noun: a place where people can play

import UIKit

class Node {
    
    let value: Int
    var next: Node?
    init(value: Int) {
        self.value = value
    }
}


class Stack {
    
    var top: Node?
    
    func push(_ value: Int) {
        let oldTop = top
        top = Node(value: value)
        
        top?.next = oldTop
    }
    
    func pop() -> Int? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peak() -> Int? {
        return top?.value
    }
    

}

//struct User {
//    let name: String
//    let userName: String
//}
//
//let me = User(name: "Victor", userName: "@VictorLee")
//let you = User(name: "Brian", userName: "@Brianvoong")
//
//let usersStack = Stack()
//usersStack.push(me)
//usersStack.push(you)
//
//let firstUserPop = usersStack.pop()
//if let name = firstUserPop?.name, let username = firstUserPop?.userName {
//    print(name, username)
//}


let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)

stack.peak()

let firstPop = stack.pop()
stack.peak()
let secondPop = stack.pop()
let thirdPop = stack.pop()
let fourthPop = stack.pop()
let fifthPop = stack.pop()
