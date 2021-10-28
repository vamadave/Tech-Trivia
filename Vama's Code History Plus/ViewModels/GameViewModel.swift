//
//  GameViewModel.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-08-11.
//

import Foundation
import SwiftUI

class GameViewModel: ObservableObject {
    
    //published properties
    @Published private var game = Game()
    
    //internal properties
    var  currentQuestion: Question {
        game.currentQuestion
    }
    var questionProgressText: String {
        "\(game.currentQuestionIndex+1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMAde: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        }
        else {
            return false
        }
    }
    
    var gameIsOver: Bool {
        game.isOver
    }
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color{
        if let guessedIndex = game.guesses[currentQuestion]{
            if guessedIndex != optionIndex {
                return GameColor.main
            }
            else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            }
            else {
                return GameColor.incorrectGuess
            }
        }
        else {
            return GameColor.main
        }
    }
    
    var correctGuesses: Int {
        game.guessCount.correct
    }
    
    var incorrectGuesses: Int {
        game.guessCount.incorrect
    }
}
