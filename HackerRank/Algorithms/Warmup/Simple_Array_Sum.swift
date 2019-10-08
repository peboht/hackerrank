//
//  Simple_Array_Sum.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
//  https://www.hackerrank.com/challenges/simple-array-sum/problem

import Foundation

class Simple_Array_Sum {

    func simpleArraySum(ar: [Int]) -> Int {
        return ar.filter { $0 < 1001 }.reduce(0, +)
    }
}
