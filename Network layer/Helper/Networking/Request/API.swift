//
//  API
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

enum API: String {
    
    //Login
    case LOGIN_API = ""
    
    func getHeader()->[String:String]{
        if self == .LOGIN_API{
            let credentialData = "\(USERNAME):\(PASSWORD)".data(using: .utf8)
            guard let cred = credentialData else { return ["" : ""] }
            let base64Credentials = cred.base64EncodedData(options: [])
            guard let base64Date = Data(base64Encoded: base64Credentials) else { return ["" : ""] }
            return ["Authorization": "Basic \(base64Date.base64EncodedString())","Content-Type": "application/x-www-form-urlencoded"]
        } else {
            let tokenType = ""
            let token = ""
            return ["Authorization": "\(tokenType) \(token)"]
        }
    }
    
    func addEncoding(params : [String : String])-> Data{
        if self == .LOGIN_API{
            let jsonString = params.reduce("") { "\($0)\($1.0)=\($1.1)&" }
            guard let body = try? jsonString.data(using: .utf8, allowLossyConversion: false) else { return Data()}
            return body
        }else{
            guard let body = try? JSONSerialization.data(withJSONObject: params) else { return Data() }
            return body
        }
    }
    
    // To get the API endpoint with request setup
    func getAPIEndpoint(queryItems: [URLQueryItem] = [], headers: HTTPHeaders = [ : ], body : Data = Data(),httpMethod : HTTPMethod) -> Endpoint {
        let pathValue = self.rawValue
        return Endpoint(path: pathValue, httpMethod: httpMethod, headers: headers, body: body, queryItems: queryItems)
    }
}
// MARK: - Different Header format usages
//        // Query item
//        let queryItem = [ URLQueryItem(name: "keyName", value: "ValueName") ]
//
//        /*
//        // Body as string
//        let bodyString = "yourParameterString"
//        let body = bodyString.data(using: .utf8) */
//
//        // Body as dictionary
//        let parameters : [String : Any] = [ "key1" : "value1", "key2": "value2" ]
//        guard let body = try? JSONSerialization.data(withJSONObject: parameters) else { return }
//
//        // Headers
//        let headers: [String: String] = [ "Header-key1": "value1",
//                                          "Header-key2": "value2" ]
