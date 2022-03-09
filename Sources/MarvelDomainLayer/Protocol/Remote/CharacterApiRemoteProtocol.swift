//
//  CharacterApiRemoteProtocol.swift
//  
//
//  Created by Salihcan Kahya on 9.03.2022.
//

import Combine

public protocol CharacterApiRemoteProtocol {
    func getCharacterList(with request: CharacterListRequest) -> AnyPublisher<MarvelCharacterListResponse, MarvelServerErrorResponse>
}
