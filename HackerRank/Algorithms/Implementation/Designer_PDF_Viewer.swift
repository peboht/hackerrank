//
//  Designer_PDF_Viewer.swift
//  HackerRank
//
//  Created by 박병환 on 08/10/2019.
//  Copyright © 2019 박병환. All rights reserved.
//
// https://www.hackerrank.com/challenges/designer-pdf-viewer/problem

import Foundation

class Designer_PDF_Viewer {

    func designerPdfViewer(h: [Int], word: String) -> Int {
        let maxHeight = charPositions(str: word).map { h[$0] }.max() ?? 0
        return word.count * maxHeight
    }

    func charPositions(str:String) -> [Int] {
        let aPosition = "a".utf8.map { Int($0) }[0]
        return str.utf8.map { Int($0) - aPosition }
    }
}
