//
//  13. Roman to Integer.swift
//  leetcode
//
//  Created by Felix Chacaltana on 24/02/22.
//
//  https://leetcode.com/problems/roman-to-integer/
//

import Foundation

func romanToInt(_ s: String) -> Int {
    let dic = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var prev = 0
    return s.reversed().reduce(0) { x, y in
        let num = dic[String(y)]!
        let res = num >= prev ? num : -num
        prev = num
        return x + res
    }
}
