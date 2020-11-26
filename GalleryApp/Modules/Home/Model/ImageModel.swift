//
//  ImageModel.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import Foundation

struct ImageModel: Decodable {
    
    let id: String
    let author: String
    let width: Int
    let height: Int
    let url: URL
    let downloadUrl: URL
    
    enum CodingKeys: String, CodingKey {
        case id             = "id"
        case author         = "author"
        case width          = "width"
        case height         = "height"
        case url            = "url"
        case downloadUrl    = "download_url"
    }
}
