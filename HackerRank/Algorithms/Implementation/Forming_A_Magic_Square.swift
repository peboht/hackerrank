//
//  Forming_A_Magic_Square.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
//  https://www.hackerrank.com/challenges/magic-square-forming/problem

import Foundation

class Forming_A_Magic_Square {

    func formMagicSquare(s: [[Int]]) -> Int {

        //1. 3x3의 마방진은 총 8가지의 경우의 수가 나온다고 한다.
        let magicSquares = [[[8, 1, 6], [3, 5, 7], [4, 9, 2]],
                            [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
                            [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
                            [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
                            [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
                            [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
                            [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
                            [[2, 7, 6], [9, 5, 1], [4, 3, 8]]]

        //2. 8가지의 경우의 수와 입력받은 s값을 비교한다.
        let result = magicSquares.map { magicSquare -> Int in

            //3. 서로 다른 값이 있는지 row 부터 확인한다.
            let diffRow = zip(magicSquare, s).map { ($0, $1) }.filter { $0 != $1 }
            //4. 값이 다른 로우가 있다면 item중에 어떤값이 다른지 확인해보고 차이값을 확인한다.
            let diffItem = diffRow.map { return zip($0, $1).map { $0 - $1 } }
            //5. 차이값을 모두 더해 8가지의 경우의 수에 대한 값을 만들어낸다.
            let sum = diffItem.flatMap { $0 }.compactMap { abs($0) }.reduce(0, +)
            return sum
        }.min()
        //6. 가장 작은 값이 최적의 수정 값의 총합이 된다.

        return result ?? 0
    }
}
