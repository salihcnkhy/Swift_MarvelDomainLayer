//
//  ImageApiRemoteProtocol.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import Combine
import Foundation

public protocol ImageApiRemoteProtocol {
    func getImageData(with request: NetworkImageRequest) -> AnyPublisher<Data, Error>
}
