//
//  main.swift
//  chuabaitapbuoi8
//
//  Created by Dương chãng on 10/31/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import Foundation

print("Hello, World!")

func mangGiamDan(){
    var arrays: [Int] = [3, 19, -4, 0, 84]
    arrays.sort() // sắp xếp tăng dần
    
    arrays.sort { (i: Int, j: Int) -> Bool in
        return i >= j // i>=j: sắp xếp giảm dần, i < j: sắp xếp tăng dần
    }
    
    print(arrays)
}
func veHinhKhan(){
    print("Nhập vào số h: ")
    let h = Int(readLine()!)!
    
    for i in 0...h{
        if i < h/2{
            for _ in 0...i{
                print("*", terminator: "")
            }
            print()
        }
        
        if i > h/2{
            for _ in i...h{
                print("*", terminator: "")
            }
            print()
        }
    }
}

//veHinhKhan()

func veHinhThoi(){
    print("Nhập vào số h (h lẻ và h > 3): ")
    let h = Int(readLine()!)!
    if h%2 == 0 || h < 3{
        veHinhThoi()
        return
    }
    let n = h/2+1
    var range = 0
    for i in 1...h{
        for j in 1...h{
            if j >= n - range && j <= n + range{
                print("*", terminator: "")
            }else{
                print(" ", terminator: "")
            }
            
        }
        if i >= n {
            range -= 1
        }else{
            range += 1
        }
        print()
    }
    veHinhThoi()
}
