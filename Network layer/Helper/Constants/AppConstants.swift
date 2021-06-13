//
//  AppConstants.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

let USERNAME = ""
let PASSWORD = ""
let GRANT_TYPE = ""

var BASE_URL : String {
    get{
        let environment: Environment = .development
        switch environment {
        case .development:
            return ""
        case .testing:
            return ""
        case .production:
            return ""
        }
    }
}
