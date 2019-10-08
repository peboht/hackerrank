//
//  The_Hurdle_Race.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
//  https://www.hackerrank.com/challenges/the-hurdle-race/problem

import Foundation

class The_Hurdle_Race {

    func hurdleRace(k: Int, height: [Int]) -> Int {
        let maximum = height.filter { $0 > k }.max() ?? 0
        let drink = maximum - k
        return drink > 0 ? drink : 0
    }
}
