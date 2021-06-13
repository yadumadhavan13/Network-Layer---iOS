//
//  UserDefaults+Extensions.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

extension UserDefaults {
    func decode<T : Codable>(for type : T.Type, using key : UserDefaultKeys) -> T? {
        let defaults = UserDefaults.standard
        guard let data = defaults.object(forKey: key.rawValue) as? Data else {return nil}
        let decodedObject = try? PropertyListDecoder().decode(type, from: data)
        return decodedObject
    }

    func encode<T : Codable>(for type : T, using key : UserDefaultKeys) {
        let defaults = UserDefaults.standard
        let encodedData = try? PropertyListEncoder().encode(type)
        defaults.set(encodedData, forKey: key.rawValue)
        defaults.synchronize()
    }
}
