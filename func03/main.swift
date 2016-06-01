//
//  main.swift
//  func03
//
//  Created by XCODE on 2015/10/15.
//  Copyright © 2015年 Nick. All rights reserved.
//

import Foundation

//func 當作參數
func add(a:Int,b:Int) -> Int
{
    return a + b
}

func sub(a:Int,b:Int) -> Int
{
    return a - b
}

func mathResult(func01:(Int,Int) -> Int, func02:(Int,Int) -> Int, a:Int, b:Int) -> (Int,Int)
{
    return (func01(a,b),func02(a,b))
}

var result = mathResult(add, func02: sub, a: 10, b: 8)
print("相加:\(result.0)  相減:\(result.1)")

// func 回傳 func
func chooseFunc(kind:Int) -> (Int,Int) -> Int
{
    if kind >= 1
    {
        return add
    }
    else
    {
        return sub
    }
}

var final = chooseFunc(0)
print(final(10,3))



