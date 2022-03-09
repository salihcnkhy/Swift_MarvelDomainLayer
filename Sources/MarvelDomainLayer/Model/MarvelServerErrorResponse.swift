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
    
    enum CodingKeys: String, CodingKey {
        case code
        case message
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        code = (try? container.decode(String.self, forKey: .code)) ?? "Decode Error"
        message = (try? container.decode(String.self, forKey: .message)) ?? "Decode Error"
    }
}
