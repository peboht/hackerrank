//
//  Compare_the_Triplets.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
//  https://www.hackerrank.com/challenges/compare-the-triplets/problem

import Foundation

class Compare_the_Triplets {

    
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        let merge = zip(a, b).map { ($0, $1) }
        let alice = merge.map { $0 > $1 }.filter { $0 }.count
        let bob = merge.map { $1 > $0 }.filter { $0 }.count

        return [alice, bob]
    }
}
