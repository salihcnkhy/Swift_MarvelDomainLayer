//
//  NetworkImageUseCase.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import DomainLayerBase
import Combine
import UIKit

public final class NetworkImageUseCase: UseCasePublisher<NetworkImageRequest, UIImage?, Error, ImageRepositoryProtocol>, NetworkImageUseCaseProtocol {
    
    public func publish(request: NetworkImageRequest) -> AnyPublisher<UIImage?, Error> {
        self.setRequest(request).eraseToAnyPublisher()
    }
    
    public override func createAnyPublisher(request: NetworkImageRequest) -> AnyPublisher<UIImage?, Error> {
        repository.getImage(with: request)
    }
}
