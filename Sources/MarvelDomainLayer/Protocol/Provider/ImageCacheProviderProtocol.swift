//
//  ImageCacheProviderProtocol.swift
//  
//
//  Created by Salihcan Kahya on 21.03.2022.
//

import Combine
import Foundation
import UIKit

public protocol ImageCacheProviderProtocol {
    func getImage(_ key: String) -> AnyPublisher<UIImage?, Never>
    func setImage(_ image: UIImage, key: String)
}
