//
//  Climbing_the_Leaderboard.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
//  https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem

import Foundation

class Climbing_the_Leaderboard {

    func climbingLeaderboard(scores: [Int], alice: [Int]) -> [Int] {

        //1. 중복 제거
        var ranking = Set(scores).sorted(by: >)

        //2. alice의 점수가 오름차순이기 때문에 ranking 목록의 뒤에서 부터 체크한다.
        //* 배열이 크기가 클수록 걸리는 시간이 오래 걸리므로 remove하면서 체크하느걸 추천.
        return alice.map { point in
            while let last = ranking.last, last <= point {
                ranking.removeLast()
            }
            return ranking.count + 1
        }
    }
}
