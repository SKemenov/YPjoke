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
///  - Parameter jokeId: `Int` number to hold an uniq joke's number
/// - Parameter jokeTitle: String with a joke
struct Joke {
    let jokeId: Int
    let jokeTitle: String
    let jokeType: JokeType
    let jokeHint: String
}


