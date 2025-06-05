# Rock Paper Scissors Training Game

## Overview

This isn't your typical Rock Paper Scissors game! Instead of just trying to beat the computer, you'll need to think strategically. The app will tell you whether you should **WIN** or **LOSE** against the computer's chosen move, and you must select the correct response to earn points.

## Features

- **Strategic Gameplay**: Alternating win/lose objectives that test your Rock Paper Scissors knowledge
- **Score Tracking**: Earn points for correct responses across 10 rounds
- **Beautiful UI**: Modern SwiftUI interface with gradient backgrounds and smooth animations
- **Game Logic**: Comprehensive win/lose logic for all Rock Paper Scissors combinations
- **Score Alerts**: Real-time feedback on your performance with final score display

## How to Play

1. The app will display the computer's move (Rock, Paper, or Scissors)
2. You'll see an instruction: either "Try to WIN!" or "Try to LOSE!"
3. Select your move based on the instruction:
   - **To WIN**: Choose the move that beats the computer's move
   - **To LOSE**: Choose the move that loses to the computer's move
4. Earn points for correct responses
5. Complete 10 rounds and see your final score

## Game Rules Reminder

- **Rock** beats Scissors
- **Scissors** beats Paper  
- **Paper** beats Rock

## Screenshots

*Add screenshots of your app in action here*

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Installation

1. Clone this repository
```bash
git clone https://github.com/yourusername/RockPaperScissors.git
```

2. Open `RockPaperScissors.xcodeproj` in Xcode

3. Build and run the project on your iOS device or simulator

## Technical Implementation

- Built with **SwiftUI** for modern, declarative UI
- Uses `@State` property wrappers for reactive state management
- Implements game logic with switch statements for move evaluation
- Features custom gradient backgrounds and material effects
- Utilizes SwiftUI alerts for user feedback

## Code Structure

- `ContentView.swift`: Main game view and logic
- Game state management with score tracking
- Randomized computer moves and alternating objectives
- Clean separation of UI and game logic

## Acknowledgements

This project is based on Paul Hudson's 100 Days of SwiftUI course. All credit for the original concept, structure, and educational content goes to Paul Hudson and the Hacking with Swift community. This repository is intended solely for personal learning and demonstration.

## Author

**Vishesh Singh Rajput aka specstan**

## License & Usage

**Educational Use Only.**

This repository is a student implementation of Paul Hudson's tutorial and is not licensed for commercial use or redistribution. For any other use, please consult the original course terms or contact Paul Hudson.

## Contributing

This project does not accept external contributions.

For queries about this repository, please contact the author. For questions about the original course or code, please refer to Paul Hudson's official channels.
