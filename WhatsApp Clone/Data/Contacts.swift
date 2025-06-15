//
//  Names.swift
//  WhatsApp Clone
//
//  Created by Chidume Nnamdi on 15/06/2025.
//

import Foundation

let contacts = [
    "Chidume Nnamdi",
    "Nnamdi Chidume",
    "Chidi Nnamdi",
    "Nnamdi Chidi",
    "Chidume Nnamdi",
    "Nnamdi Chidume",
    "Chidi Nnamdi",
    "Nnamdi Chidi",
    "Kene"
]

let randomContactName = contacts.randomElement() ?? "Unknown"


let communityNames: [String] = [
    "OLMPH PROFESSOIONAL COMMUNITY",
    "Tech Enthusiasts",
    "Book Lovers",
    "Foodies",
    "Travelers",
    "Fashionistas",
    "Sports Fanatics",
    "Gaming Enthusiasts",
    "Artists",
    "Music Lovers"
]

var randomCommunityName: String {
    return communityNames.randomElement() ?? "Unknown"
}
