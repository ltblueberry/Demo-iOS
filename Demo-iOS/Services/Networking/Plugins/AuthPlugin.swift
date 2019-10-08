//
//  AuthPlugin.swift
//  Demo-iOS
//
//  Created by ltblueberry on 08/10/2019.
//  Copyright © 2019 ltblueberry. All rights reserved.
//

import Moya

// MARK: - AuthPlugin

struct AuthPlugin: PluginType {

    func prepare(_ request: URLRequest, target _: TargetType) -> URLRequest {
        // Example... here we get user token. If we have token, add it to request...
        // guard let token: String = AppUser.getJWT() else { return request }
        let token = "no token right now :P"
        var request = request
        request.addValue(
            "JWT \(token)",
            forHTTPHeaderField: "Authorization"
        )
        return request
    }
}
