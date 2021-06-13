//
//  Result
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import Foundation

enum Result<T, E> where E: Error {
    case success(T)
    case failure(E)
}
