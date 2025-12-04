# Rock–Paper–Scissors (iOS App)
A simple and fun Rock–Paper–Scissors game built using Swift and UIKit.

The user selects Stone (✊), Paper (🖐️), or Scissors (✌️) and the app randomly generates the computer’s choice. The result is then displayed on screen.

## *🎮 Features*
Three selectable options: Stone, Paper, Scissors
- Randomized computer choice each round.
- Displays both the computer's choice and the game result.
- Clean and minimal UI using UIKit.
- Quick and lightweight game logic.

## *🧠 How It Works*
When the user taps a button, the app:

**1**. Passes the corresponding enum value (Choice) to the play() function.

**2**. Randomly selects a computer choice.

**3**. Compares both choices.

**4**. Updates two labels:
 - Computer’s choice.
 - Result (Draw 🤝, You 🏆, or Lose 🥲).
