//
//  CharacterListUseCase.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import DomainLayerBase
import Combine

public final class CharacterListUseCasePublisher: UseCasePublisher<CharacterListRequest, CharacterListResponse, Error, CharacterRepositoryProtocol>, CharacterListUseCaseProtocol {
    
    public func published(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, Error> {
        self.setRequest(request).eraseToAnyPublisher()
    }
    
    public override func createAnyPublisher(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, Error> {
        repository.getCharacterList(with: request)
    }
}
