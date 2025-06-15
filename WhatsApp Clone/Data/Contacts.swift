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

let communityChannelNames: [String] = [
    "Tech Enthusiasts Channel",
    "Book Lovers Channel",
    "Foodies Channel",
    "Travelers Channel",
    "Fashionistas Channel",
    "Sports Fanatics Channel",
    "Gaming Enthusiasts Channel",
    "Artists Channel",
    "Music Lovers Channel"
]

var randomCommunityChannelName: String {
    return communityChannelNames.randomElement() ?? "Unknown"
}

let channelPreviewTexts: [String] = [
    "Hey everyone! I'm excited to share some insights and tips on how to stay organized and productive in our fast-paced digital world.",
    "Hello, book lovers! I'm thrilled to host a book club discussion where we can dive into the latest reads and exchange our thoughts.",
    "Hello, foodies! I'm passionate about sharing delicious recipes and culinary adventures with you. Whether you're a local or a traveler, I've got something for everyone.",
    "Hello, travelers! I'm excited to share my favorite travel destinations and hidden gems around the world. Whether you're planning your next adventure or just looking for inspiration, I've got something for you.",
    "~ OLUWABUKUNOLAMI CODING FC ~ OLUWABUKUNOLAMI See all 05.05.25 !: • YC..."
]

var randomChannelPreviewText: String {
    return channelPreviewTexts.randomElement() ?? "Unknown"
}

let chatTags = [
    "All",
    "Tech",
    
    "Book",
    "Food",
    
    "Travel",
    "Fashion",
    
    "Sports",
    "Gaming",
    
    "Art",
]
