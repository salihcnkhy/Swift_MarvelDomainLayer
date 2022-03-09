//
//  CharacterListUseCaseProtocol.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Combine

public protocol CharacterListUseCaseProtocol {
    func published(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, Error>
}
