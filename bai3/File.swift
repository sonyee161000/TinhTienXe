//
//  File.swift
//  bai3
//
//  Created by Nguyễn Ngọc Sơn on 06/07/2023.
//

import Foundation
//-----cho một mảng số nguyên, kiểm tra nếu trong mảng có số âm thì thay bằng số 0

func kiemTraMang() {
    
    var arr: [Int] = [2, 4, -3, 0, 5, -4]
    for (index, value) in arr.enumerated() {
        if value < 0 {
            arr[index] = 0
        }
    }
    
    print(arr)
}

