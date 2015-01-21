//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Johnny Chang on 8/31/14.
//  Copyright (c) 2014 Johnny Chang. All rights reserved.
//

import Foundation
// 1
class TipCalculatorModel {
    
    // 2
    var total: Double
    var taxPct: Double
    let subtotal: Double
    
    // 3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        subtotal = total / (taxPct + 1)
    }
    
    // 4
    func calcTipWithTipPct(tipPct:Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        println("15%: \(calcTipWithTipPct(0.15))")
        println("18%: \(calcTipWithTipPct(0.18))")
        println("20%: \(calcTipWithTipPct(0.20))")
    }
    
    func printPossibleTotals() {
        println("15%: \((calcTipWithTipPct(0.15))+total)")
        println("18%: \((calcTipWithTipPct(0.18))+total)")
        println("20%: \((calcTipWithTipPct(0.20))+total)")
    }
    
    func returnPossibleTips() -> [Int: Double] {
        
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        // 2
        var retval = Dictionary<Int, Double>()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            // 3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
        
    }
    
}
