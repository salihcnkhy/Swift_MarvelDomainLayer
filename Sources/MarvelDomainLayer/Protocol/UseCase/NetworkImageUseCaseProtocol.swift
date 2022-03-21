//
//  NetworkImageUseCaseProtocol.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import Combine
import Foundation
import UIKit

public protocol NetworkImageUseCaseProtocol {
    func publish(request: NetworkImageRequest) -> AnyPublisher<UIImage?, Error>
}
