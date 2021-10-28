//
//  ScoreViewModel.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-08-12.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses*100/(correctGuesses + incorrectGuesses))
    }
}
