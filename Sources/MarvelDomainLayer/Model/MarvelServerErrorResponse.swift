//
//  ServerErrorResponse.swift
//  
//
//  Created by Salihcan Kahya on 9.03.2022.
//

import Foundation
import NetworkEntityLayer

public struct MarvelServerErrorResponse: ServerErrorProtocol {
    public var description: String?
    public let code: Int
    public let message: String?
    public let status: String?
    
    public init(description: String?) {
        self.description = description
        self.code = 0
        self.message = ""
        self.status = ""
    }
    
    enum CodingKeys: String, CodingKey {
        case code
        case message
        case status
    }
}
