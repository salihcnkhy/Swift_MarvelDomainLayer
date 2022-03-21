//
//  CharacterListRequest.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

public struct CharacterListRequest: Encodable {
    public init(offset: Int, limit: Int, nameStartsWith: String? = nil) {
        self.offset = offset
        self.limit = limit
        self.nameStartsWith = nameStartsWith
        print(nameStartsWith)
    }
    
    public let offset: Int
    public let limit: Int
    public let nameStartsWith: String?
}
