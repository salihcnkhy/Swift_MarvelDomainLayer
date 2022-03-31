//
//  MarvelCharacterListResponse.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Foundation
// MARK: - MarvelCharacterListResponse
public struct MarvelCharacterListResponse: Decodable {
    public let code: Int
    public let status, copyright, attributionText, attributionHTML: String
    public let etag: String
    public let data: MarvelCharacterDataListResponse
}

// MARK: - DataClass
public struct MarvelCharacterDataListResponse: Decodable {
    public let offset, limit, total, count: Int
    public let results: [MarvelCharacterDataResponse]
    
    enum CodingKeys: String, CodingKey {
        case offset, limit, total, count, results
    }
    
    public init(from decoder: Decoder) throws {
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            offset = try container.decode(Int.self, forKey: .offset)
            limit = try container.decode(Int.self, forKey: .limit)
            total = try container.decode(Int.self, forKey: .total)
            count = try container.decode(Int.self, forKey: .count)
            results = try container.decode([MarvelCharacterDataResponse].self, forKey: .results)
        } catch {
            print(error)
            throw NSError()
        }
    }
}

// MARK: - Result
public struct MarvelCharacterDataResponse: Decodable {
    public let id: Int
    public let name, description, modified: String
    public let thumbnail: CharacterThumbnailResponse
    public let resourceURI: String
    public let comics, series: ComicListResponse
    public let stories: StoryListResponse
    public let events: ComicListResponse
    public let urls: [CharacterURLElementResponse]
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case description
        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
    }
}

// MARK: - Comics
public struct ComicListResponse: Decodable {
    public let available: Int
    public let collectionURI: String
    public let items: [ComicItemResponse]
    public let returned: Int
}

// MARK: - ComicsItem
public struct ComicItemResponse: Decodable {
    public let resourceURI: String
    public let name: String
}

// MARK: - Stories
public struct StoryListResponse: Decodable {
    public let available: Int
    public let collectionURI: String
    public let items: [StoryItemResponse]
    public let returned: Int
}

// MARK: - StoriesItem
public struct StoryItemResponse: Decodable {
    public let resourceURI: String
    public let name: String
    public let type: StoryItemTypeResponse
}

public enum StoryItemTypeResponse: String, Decodable {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let type = (try? container.decode(String.self)) ?? ""
        let story = StoryItemTypeResponse(rawValue: type) ?? .unknown
        print(story)
        self = story
    }
    
    case unknown
    case cover
    case empty = ""
    case interiorStory
    case pinup
    case pinn = "pin-up"
    case backcovers
    case ad
    case article
    case textArticle = "text article"
    case recap
    case profile
    case mysteryStory = "mystery story"
}

// MARK: - Thumbnail
public struct CharacterThumbnailResponse: Decodable {
    public let path: String
    public let thumbnailExtension: CharacterThumbnailExtensionResponse
    
    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

public enum CharacterThumbnailExtensionResponse: String, Decodable {
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let type = (try? container.decode(String.self)) ?? ""
        let thumbnailExtension = CharacterThumbnailExtensionResponse(rawValue: type) ?? .jpg
        print(thumbnailExtension)
        self = thumbnailExtension
    }
    
    case gif
    case jpg
}

// MARK: - URLElement
public struct CharacterURLElementResponse: Decodable {
    public let type: CharacterURLTypeResponse
    public let url: String
}

public enum CharacterURLTypeResponse: String, Decodable {
    case comiclink
    case detail
    case wiki
}
