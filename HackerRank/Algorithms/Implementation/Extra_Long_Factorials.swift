//
//  Extra_Long_Factorials.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
// https://www.hackerrank.com/challenges/extra-long-factorials/problem

import Foundation

class Extra_Long_Factorials {

    func extraLongFactorials(n: Int) -> Void {
        var result = "1"
        for i in 1...n {
            result = multiply(result, number: i)
        }
        print(result)
    }

    func multiply(_ target: String, number: Int) -> String {
        //1. 곱셈을 위해 뒤집어 자리별로 곱셈을 해준다.
        var temp: [Int] = target.map { Int(String($0)) ?? 0 }
        temp.reverse()
        temp = temp.map { $0 * number }

        var resultArray: [Int] = []
        var up: Int = 0

        //2. 1의 자리는 남기고 올림 되는 값을 구해 다음 for문에서 처리한다.
        for i in 0...temp.count - 1 {
            let value = temp[i] + up
            let remainer = value % 10
            up = value / 10

            resultArray.append(remainer)
        }

        //3. 자리수만큼 for문이 돌기때문에 마지막에 올림값이 생기는 경우를 위해 추가한다.
        if up > 0 {
            resultArray.append(up)
        }

        //4. 뒤집어서 계산을 했으니 다시 돌려주자.
        resultArray.reverse()

        var result = ""
        resultArray.forEach { result += String($0) }
        return result
    }

}
