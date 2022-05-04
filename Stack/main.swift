//
//  main.swift
//  Stack
//
//  Created by Matheus Augusto Alves de Meneses
//

import Foundation
// Pilha é estrutura de dados.
struct Stack<T> {
    private var stack: [T]
    
    init(_ stack: [T]) {
        self.stack = stack
    }
    // colocar no topo.
    mutating func put(_ value: T) {
        return stack.append(value)
    }
    // retirar do topo - requer catch.
    mutating func pop() -> T {
        return stack.removeLast()
    }
    // ver qual é topo - requer catch.
    func top() -> T? {
        return stack.last
    }
    // ver a quantidade de coisas.
    var count: Int {
        return stack.count
    }
    // verificar se esta vazio.
    var isEmpty: Bool {
        return stack.isEmpty
    }
    // teste de
    var description: [T] {
        return stack
    }
}

var list: Stack<Int> = Stack([1,5,3,8,6,2])

print(list.description)
