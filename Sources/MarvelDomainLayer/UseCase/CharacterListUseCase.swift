//
//  CharacterListUseCase.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import DomainLayerBase
import Combine

public final class CharacterListUseCasePublisher: UseCasePublisher<CharacterListRequest, CharacterListResponse, Never, CharacterRepositoryProtocol> {
    
    public override func createAnyPublisher(request: CharacterListRequest) -> AnyPublisher<CharacterListResponse, Never> {
        repository.getCharacterList(with: request)
            .replaceError(with: .init())
            .eraseToAnyPublisher()
    }
}
