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
    public let code: String
    public let message: String
    
    public init(description: String?) {
        self.description = description
        self.code = ""
        self.message = ""
    }
}
