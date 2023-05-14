//
//  Model.swift
//  YPjoke
//
//  Created by Sergey Kemenov on 10.05.2023.
//

import Foundation


// MARK: - Structs
//
/// A main structure to hold all data about a joke.
///
/// The `Joke` structure has the following properties:
///
/// - term **jokeId: Int**: Used to represent an uniqic number of the current joke.
/// - term **jokeTitle: String**: Used to represent the current joke by itself.
/// - term **jokeType: JokeType**: Used to represent a type of the current joke.
/// - term **jokeHint: String**: Used to represent a hint for the current joke.
///
/// - Important: The `Joke` structure has no methods.
struct Joke {
    let jokeId: Int
    let jokeTitle: String
    let jokeType: JokeType
    let jokeHint: String
}


