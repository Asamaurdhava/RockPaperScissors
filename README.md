# GuessTheFlag

A SwiftUI-based flag identification game that challenges users to identify country flags across 8 strategic rounds with dynamic scoring and educational feedback.

## Overview

GuessTheFlag is an interactive iOS application that combines education with entertainment, allowing users to test their geography knowledge while demonstrating modern SwiftUI development patterns. The app presents randomized flag challenges with immediate feedback and comprehensive score tracking.

### Core Functionality
- **Flag Identification**: Choose the correct flag from three options based on country name prompts
- **8-Round Structure**: Complete gameplay sessions with clear progression tracking  
- **Dynamic Scoring**: Earn points for correct answers, lose points for mistakes (minimum score protection)
- **Educational Feedback**: Wrong answer alerts specify the actual country for enhanced learning
- **Seamless Flow**: Automatic question progression with restart functionality

## Features

### Game Mechanics
- **11 Country Collection**: Estonia, France, Germany, Ireland, Italy, Nigeria, Poland, Spain, UK, Ukraine, and US
- **Randomized Presentation**: Shuffled country order ensures unique gameplay experiences
- **Smart Scoring System**: +1 for correct answers, -1 for incorrect (floor of 0)
- **Contextual Feedback**: Country-specific error messages with proper grammar ("the US", "the UK")

### Technical Implementation
- **Modern SwiftUI Architecture**: State-driven UI with reactive updates
- **Professional Visual Design**: Gradient backgrounds, material effects, and shadow styling
- **Dual Alert System**: Mid-game feedback and final score presentation
- **Responsive Layout**: Adaptive design for various screen sizes

## Requirements

- **iOS**: 15.0+
- **Xcode**: 13.0+
- **Swift**: 5.5+

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/GuessTheFlag.git
   ```
2. Open `GuessTheFlag.xcodeproj` in Xcode
3. Ensure all flag image assets are properly configured
4. Build and run on your preferred device or simulator

## Usage

1. **Start Game**: Launch the app to begin your first 8-question round
2. **Read Prompt**: View the country name displayed at the top
3. **Select Flag**: Tap one of the three flag options presented
4. **Receive Feedback**: Get immediate confirmation or correction with educational details
5. **Track Progress**: Monitor your running score throughout the round
6. **Complete Round**: View final results after 8 questions
7. **Restart**: Begin a new round with reshuffled questions

## Code Architecture

### State Management
```swift
@State private var countries = [...].shuffled()
@State private var correctAnswer = Int.random(in: 0...2)
@State private var score = 0
@State private var questionCount = 0
```

### Game Logic Highlights
- **Dynamic Country Shuffling**: Ensures varied gameplay experiences
- **Boundary-Protected Scoring**: Prevents negative scores while maintaining challenge
- **Contextual Alert Messages**: Educational feedback with proper country name formatting
- **Automatic Game Flow**: Seamless progression from questions to final scoring

### UI Components
- **Gradient Backgrounds**: Professional visual hierarchy with radial gradients
- **Material Design Elements**: Modern button styling with shadow effects
- **Responsive Typography**: Dynamic font sizing and weight variation
- **Alert Integration**: Context-aware dialog presentation

## Technical Specifications

- **Framework**: SwiftUI
- **Architecture Pattern**: MVVM with @State property wrappers
- **UI Components**: ZStack composition, VStack layouts, Button interactions
- **Styling**: RadialGradient, .regularMaterial, .clipShape modifiers
- **Data Management**: Array manipulation, randomization, state persistence

## Educational Value

This project demonstrates several key iOS development concepts:
- **SwiftUI State Management**: Complex game state coordination
- **User Interface Design**: Modern, accessible, and responsive layouts
- **Game Development Patterns**: Scoring systems, round management, and user feedback
- **Code Organization**: Clean architecture with separation of concerns

## Acknowledgements

This project is based on Paul Hudson's 100 Days of SwiftUI course. All credit for the original concept, structure, and educational content goes to Paul Hudson and the Hacking with Swift community. This repository is intended solely for personal learning and demonstration.

## Author

**Vishesh Singh Rajput aka specstan**

## License

This project is created for educational purposes as part of learning iOS development with SwiftUI. The implementation follows Paul Hudson's tutorial structure and is intended for personal skill development and portfolio demonstration.

For commercial use or distribution, please refer to the original course terms and conditions.
