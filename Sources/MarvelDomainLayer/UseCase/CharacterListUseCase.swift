//
//  CharacterListUseCase.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import DomainLayerBase
import Combine

public final class CharacterListUseCase: UseCasePublisher<CharacterListRequest, MarvelCharacterListResponse, MarvelServerErrorResponse, CharacterRepositoryProtocol>, CharacterListUseCaseProtocol {
    
    public func publish(request: CharacterListRequest) -> AnyPublisher<MarvelCharacterListResponse, MarvelServerErrorResponse> {
        self.setRequest(request).eraseToAnyPublisher()
    }
    
    public override func createAnyPublisher(request: CharacterListRequest) -> AnyPublisher<MarvelCharacterListResponse, MarvelServerErrorResponse> {
        repository.getCharacterList(with: request)
    }
}
