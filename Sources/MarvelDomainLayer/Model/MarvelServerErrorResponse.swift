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
    
    public init(description: String?) {
        self.description = description
    }
}
