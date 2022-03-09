//
//  CharacterListUseCaseProtocol.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Combine

public protocol CharacterListUseCaseProtocol {
    func publish(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, MarvelServerErrorResponse>
}
