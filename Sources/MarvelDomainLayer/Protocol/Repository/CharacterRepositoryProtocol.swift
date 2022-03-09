//
//  CharacterRepositoryProtocol.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Combine

public protocol CharacterRepositoryProtocol {
    func getCharacterList(with request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, MarvelServerErrorResponse>
}
