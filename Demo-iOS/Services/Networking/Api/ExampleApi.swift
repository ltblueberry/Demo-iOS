//
//  ExampleApi.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Foundation
import Moya

enum ExampleApi {
    case example
}

extension ExampleApi: TargetType {
    var baseURL: URL {
        return URL(string: "https://jsonplaceholder.typicode.com")!
    }

    var path: String {
        switch self {
        case .example:
            return "/posts"
        }
    }

    var method: Moya.Method {
        switch self {
        case .example:
            return .get
        }
    }

    var task: Task {
        switch self {
        case .example:
            return .requestPlain
        }
    }

    var validationType: ValidationType {
        return .successCodes
    }

    var headers: [String: String]? {
        return nil
    }

    var sampleData: Data {
        return Data()
    }
}
