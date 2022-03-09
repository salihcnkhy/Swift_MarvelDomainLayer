//
//  CharacterListUseCase.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import DomainLayerBase
import Combine

public final class CharacterListUseCasePublisher: UseCasePublisher<CharacterListRequest, CharacterListResponse, MarvelServerErrorResponse, CharacterRepositoryProtocol>, CharacterListUseCaseProtocol {
    
    public func publish(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, MarvelServerErrorResponse> {
        self.setRequest(request).eraseToAnyPublisher()
    }
    
    public override func createAnyPublisher(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, MarvelServerErrorResponse> {
        repository.getCharacterList(with: request)
    }
}
