//
//  Model.swift
//  YPjoke
//
//  Created by Sergey Kemenov on 10.05.2023.
//

import Foundation


// MARK: - Structs
//
/// A main struct to hold all information about a joke
/// - Parameters:
///  - jokeId: number to hold an uniq joke's number
///  - jokeTitle: String with a joke
///  - jokeType: enum to categorize the joke
///  - jokeHint: String to hold a hint for the joke
struct Joke {
    let jokeId: Int
    let jokeTitle: String
    let jokeType: JokeType
    let jokeHint: String
}


