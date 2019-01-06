//
//  Wage.swift
//  window-shopper
//
//  Created by Tarlan Ismayilsoy on 1/5/19.
//  Copyright © 2019 Tarlan Ismayilsoy. All rights reserved.
//

import Foundation

class Wage
{
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int
    {
        if wage == 0 {return 0}
        return Int(ceil(price / wage))
    }
}
