//
//  Question.swift
//  Vama's Code History Plus
//
//  Created by Vama Dave on 2021-07-21.
//

import Foundation

struct Question: Hashable {
    let questionText : String
    let possibleAnswers : [String]
    let correctAnswerIndex : Int
    static var allQuestions = [
    Question(questionText: "Who invented the World Wide Web?", possibleAnswers: [
        "Steve Jobs",
        "Linus Torvalds",
        "Bill Gates",
        "Tim Berners-Lee"
     ], correctAnswerIndex: 3),
    Question(questionText: "What was the first object oriented programming language?", possibleAnswers: [
        "Simula",
        "Python",
        "Swift",
        "C"
    ], correctAnswerIndex: 0),
    Question(questionText: "A loop that never ends is called a(n) _______.", possibleAnswers: [
            "While loop",
            "Infinite loop",
            "Recursive loop",
            "For loop"
        ], correctAnswerIndex: 1),
    Question(questionText: "How many computer languages are in use?", possibleAnswers: [
                                "350",
                                "2000",
                                "75",
                                "4700"
                            ], correctAnswerIndex: 1),
    Question(questionText: "Which of the following programming language is used to create programs like applets?", possibleAnswers: [
                "COBOL",
                "C",
                "Java",
                "BASIC"
            ], correctAnswerIndex: 2),
    Question(questionText: "Who founded apple computer?", possibleAnswers: [
                                "Stephen Fry",
                                "Bill Gates",
                                "Steve Jobs",
                                "Stephen Hawking"
                            ], correctAnswerIndex: 2),
    Question(questionText: "To find errors and fix them within a program, we _____.", possibleAnswers: [
                    "Compile",
                    "Execute",
                    "Debug",
                    "Scan"
                ], correctAnswerIndex: 2),
    Question(questionText: "If you need to execute a section of code 10 times, which of the following selection structures will you use?", possibleAnswers: [
                        "If-Else",
                        "While",
                        "If",
                        "For"
                    ], correctAnswerIndex: 3),
    Question(questionText: "Which of the following is not one of the early “protocols,” or ways to use the Internet?", possibleAnswers: [
                            "Blogging",
                            "Telnet",
                            "FTP",
                            "Gopher"
                        ], correctAnswerIndex: 0),
    Question(questionText: "A network designed to allow communication within an organization is called:", possibleAnswers: [
                                "the World Wide Web",
                                "Intranet",
                                "Yahoo",
                                "Internet"
                            ], correctAnswerIndex: 1)
    ]
}


