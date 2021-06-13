//
//  Others+Extensions.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

import Foundation

extension Double {
    var stringWithoutZeroFraction: String {
        return truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
