//
//  NetworkImageRequest.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import Foundation

public struct NetworkImageRequest {
    public init(path: String) {
        self.path = path
    }
    
    public let path: String
}
