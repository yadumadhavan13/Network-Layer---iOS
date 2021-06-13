//
//  OauthClient
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

class OauthClient: APIClient {
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
}

// MARK: - API Request calls

extension OauthClient {
    func loginRequest(from params: [String : String], completion: @escaping (Result<LoginModel?, APIError>) -> Void) {
        let api: API = .LOGIN_API
        let headers = api.getHeader()
        let body = api.addEncoding(params: params)
        let endpoint: Endpoint = api.getAPIEndpoint(headers: headers, body: body,httpMethod:.post)
        let request = endpoint.request
        callAPI(with: request, decode: { json -> LoginModel?? in
            guard let response = json as? LoginModel else { return  nil }
            return response
        }, completion: completion)
    }
}

