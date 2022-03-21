//
//  ImageRepositoryProtocol.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import Combine
import Foundation
import UIKit

public protocol ImageRepositoryProtocol {
    func getImage(with request: NetworkImageRequest) -> AnyPublisher<UIImage?, Error>
}
