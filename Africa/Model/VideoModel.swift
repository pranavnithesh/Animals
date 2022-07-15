//
//  VideoModel.swift
//  Africa
//
//  Created by M1089943 on 08/06/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // COMPUTED PROPERTY
    var thumbnail: String {
        "video-\(id)"
    }
}
  
