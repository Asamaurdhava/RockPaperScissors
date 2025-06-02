//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Vishesh S Rajput on 02/06/25.
//

import SwiftUI

struct ContentView: View {
    
    let moves = ["Rock", "Paper", "Scissors"]
    
    @State private var systemMove = Int.random(in: 0...2)
    @State private var shouldWin = true
    
    @State private var showingScore = false
    @State private var showingFinalScore = false
    
    @State private var score = 0
    @State private var questionCount = 0
    @State private var scoreTitle = ""
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                
                Spacer()
                
                Text(shouldWin ? "Try to WIN!" : "Try to LOSE!")
                    .foregroundStyle(.white)
                    .font(.largeTitle.bold())
                
                VStack {
                    
                    Text("App chose: \(moves[systemMove])")
                        .foregroundStyle(.black)
                        .font(.title2.bold())
                    
                    VStack {
                        ForEach(0..<3) { number in
                            Button {
                                playerMove(number)
                            } label: {
                                Image(moves[number])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .shadow(radius: 5)
                            }
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Your score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
                
            }
            .padding()

        } //ZStack ends
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
        .alert("Game Over", isPresented: $showingFinalScore) {
            Button("Restart", action: resetGame)
        } message: {
            Text("Your final score is \(score) out of 10")
        }
        
    }
    
    func playerMove(_ move: Int) {
        let correctAnswer: Int
                
        if shouldWin {
                    // Player should win - what beats the system's move?
            switch systemMove {
            case 0: correctAnswer = 1 // Rock loses to Paper
            case 1: correctAnswer = 2 // Paper loses to Scissors
            case 2: correctAnswer = 0 // Scissors loses to Rock
            default: correctAnswer = 0
            }
        } else {
            // Player should lose - what loses to the system's move?
            switch systemMove {
            case 0: correctAnswer = 2 // Rock beats Scissors
            case 1: correctAnswer = 0 // Paper beats Rock
            case 2: correctAnswer = 1 // Scissors beats Paper
            default: correctAnswer = 0
            }
        }
                
        if move == correctAnswer {
            scoreTitle = "Correct!"
            score += 1
        } else {
            scoreTitle = "Wrong!"
        }
                
        showingScore = true
        
    }
    
    func askQuestion() {
        questionCount += 1
        
        if questionCount == 10 {
            showingFinalScore = true
        } else {
            systemMove = Int.random(in: 0...2)
            shouldWin.toggle()
        }
    }
    
    func resetGame() {
        questionCount = 0
        score = 0
        systemMove = Int.random(in: 0...2)
        shouldWin.toggle()
    }
    
}

#Preview {
    ContentView()
}
