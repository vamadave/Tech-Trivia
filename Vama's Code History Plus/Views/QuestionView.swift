//
//  QuestionView.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-08-11.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    var body: some View {
        VStack{
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            HStack{
                ForEach(0..<question.possibleAnswers.count){ answerIndex in
                    Button(action: {
                        viewModel.makeGuess(atIndex: answerIndex)
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                       
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                    }) .disabled(viewModel.guessWasMAde)
                }
            }
                    if viewModel.guessWasMAde {
                        Button(action: {viewModel.displayNextScreen() }) {
                            BottomTextView(str: "Next")
                        }
                }
            }
        }
    }



struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
    }
}

