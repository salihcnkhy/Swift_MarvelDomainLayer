//
//  MarvelCharacterListResponse.swift
//  
//
//  Created by Salihcan Kahya on 22.02.2022.
//

import Foundation

// MARK: - MarvelCharacterListResponse
public struct MarvelCharacterListResponse {
    let code: Int
    let status, copyright, attributionText, attributionHTML: String
    let etag: String
    let data: MarvelCharacterListDataResponse
}

// MARK: - MarvelCharacterListDataResponse
public struct MarvelCharacterListDataResponse {
    let offset, limit, total, count: Int
    let results: [MarvelCharacterResponse]
}

// MARK: - MarvelCharacterResponse
public struct MarvelCharacterResponse {
    let id: Int
    let name, resultDescription, modified: String
    let thumbnail: ThumbnailResponse
    let resourceURI: String
    let comics, series: ComicListResponse
    let stories: StoryListResponse
    let events: ComicListResponse
    let urls: [CharacterURLElementResponse]
}

// MARK: - ComicListResponse
public struct ComicListResponse {
    let available: Int
    let collectionURI: String
    let items: [ComicItemResponse]
    let returned: Int
}

// MARK: - ComicItemResponse
public struct ComicItemResponse {
    let resourceURI: String
    let name: String
}

// MARK: - StoryListResponse
public struct StoryListResponse {
    let available: Int
    let collectionURI: String
    let items: [StoryItemResponse]
    let returned: Int
}

// MARK: - StoryItemResponse
public struct StoryItemResponse {
    let resourceURI: String
    let name: String
    let type: StoryItemTypeResponse
}

public enum StoryItemTypeResponse {
    case cover
    case empty
    case interiorStory
}

// MARK: - ThumbnailResponse
public struct ThumbnailResponse {
    let path: String
    let thumbnailExtension: ThumbnailExtensionResponse
}

public enum ThumbnailExtensionResponse {
    case gif
    case jpg
}

// MARK: - CharacterURLElementResponse
public struct CharacterURLElementResponse {
    let type: CharacterURLElementTypeResponse
    let url: String
}

public enum CharacterURLElementTypeResponse {
    case comiclink
    case detail
    case wiki
}
