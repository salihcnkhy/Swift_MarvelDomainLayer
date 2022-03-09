//
//  MarvelCharacterListResponse.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Foundation
// MARK: - MarvelCharacterListResponse
public struct MarvelCharacterListResponse: Decodable {
    let code: Int
    let status, copyright, attributionText, attributionHTML: String
    let etag: String
    let data: MarvelCharacterDataListResponse
}

// MARK: - DataClass
public struct MarvelCharacterDataListResponse: Decodable {
    let offset, limit, total, count: Int
    let results: [MarvelCharacterDataResponse]
}

// MARK: - Result
public struct MarvelCharacterDataResponse: Decodable {
    let id: Int
    let name, description, modified: String
    let thumbnail: CharacterThumbnailResponse
    let resourceURI: String
    let comics, series: ComicListResponse
    let stories: StoryListResponse
    let events: ComicListResponse
    let urls: [CharacterURLElementResponse]
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case description
        case modified, thumbnail, resourceURI, comics, series, stories, events, urls
    }
}

// MARK: - Comics
public struct ComicListResponse: Decodable {
    let available: Int
    let collectionURI: String
    let items: [ComicItemResponse]
    let returned: Int
}

// MARK: - ComicsItem
public struct ComicItemResponse: Decodable {
    let resourceURI: String
    let name: String
}

// MARK: - Stories
public struct StoryListResponse: Decodable {
    let available: Int
    let collectionURI: String
    let items: [StoryItemResponse]
    let returned: Int
}

// MARK: - StoriesItem
public struct StoryItemResponse: Decodable {
    let resourceURI: String
    let name: String
    let type: StoryItemTypeResponse
}

public enum StoryItemTypeResponse: String, Decodable {
    case cover
    case empty = ""
    case interiorStory
}

// MARK: - Thumbnail
public struct CharacterThumbnailResponse: Decodable {
    let path: String
    let thumbnailExtension: CharacterThumbnailExtensionResponse
    
    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension = "extension"
    }
}

public enum CharacterThumbnailExtensionResponse: String, Decodable {
    case gif
    case jpg
}

// MARK: - URLElement
public struct CharacterURLElementResponse: Decodable {
    let type: CharacterURLTypeResponse
    let url: String
}

public enum CharacterURLTypeResponse: String, Decodable {
    case comiclink
    case detail
    case wiki
}
