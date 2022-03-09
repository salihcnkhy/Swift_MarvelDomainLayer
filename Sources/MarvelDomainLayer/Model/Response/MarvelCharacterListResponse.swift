//
//  MarvelCharacterListResponse.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Foundation

// MARK: - MarvelCharacterListResponse
public struct MarvelCharacterListResponse: Decodable {
    let code: Int?
    let status, copyright, attributionText, attributionHTML: String?
    let etag: String?
    let data: MarvelCharacterListDataResponse?
}

// MARK: - MarvelCharacterListDataResponse
public struct MarvelCharacterListDataResponse: Decodable {
    let offset, limit, total, count: Int?
    let results: [MarvelCharacterResponse]?
}

// MARK: - MarvelCharacterResponse
public struct MarvelCharacterResponse: Decodable {
    let id: Int?
    let name, resultDescription, modified: String?
    let thumbnail: ThumbnailResponse?
    let resourceURI: String?
    let comics, series: ComicListResponse?
    let stories: StoryListResponse?
    let events: ComicListResponse?
    let urls: [CharacterURLElementResponse]?
}

// MARK: - ComicListResponse
public struct ComicListResponse: Decodable {
    let available: Int?
    let collectionURI: String?
    let items: [ComicItemResponse]?
    let returned: Int?
}

// MARK: - ComicItemResponse
public struct ComicItemResponse: Decodable{
    let resourceURI: String?
    let name: String?
}

// MARK: - StoryListResponse
public struct StoryListResponse: Decodable {
    let available: Int?
    let collectionURI: String?
    let items: [StoryItemResponse]?
    let returned: Int?
}

// MARK: - StoryItemResponse
public struct StoryItemResponse: Decodable {
    let resourceURI: String?
    let name: String?
    let type: StoryItemTypeResponse?
}

public enum StoryItemTypeResponse: Decodable {
    case cover
    case empty
    case interiorStory
}

// MARK: - ThumbnailResponse
public struct ThumbnailResponse: Decodable {
    let path: String?
    let thumbnailExtension: ThumbnailExtensionResponse?
}

public enum ThumbnailExtensionResponse: Decodable {
    case gif
    case jpg
}

// MARK: - CharacterURLElementResponse
public struct CharacterURLElementResponse: Decodable {
    let type: CharacterURLElementTypeResponse?
    let url: String?
}

public enum CharacterURLElementTypeResponse: Decodable {
    case comiclink
    case detail
    case wiki
}
