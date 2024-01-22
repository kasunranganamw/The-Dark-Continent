//
//  AnimalModel.swift
//  The Dark Continent
//
//  Created by Kasun Rangana M W on 22/01/2024.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
